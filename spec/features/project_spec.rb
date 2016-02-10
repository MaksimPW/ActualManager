require 'rails_helper'

describe Project do
subject { page }
before { visit projects_path }

	describe "Index projects" do
		it { should have_content('Проекты') } 
		
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should	have_selector('a', :value =>'Редактировать') }
		it { should	have_selector('a', :value =>'Удалить') }
	end

	describe "Button new" do
		it { should have_content('Добавить') }
		it { should have_content('Добавить проект') }

		it { should have_link('Добавить проект', href: new_project_path) }
	end

	describe "Create" do
		before { visit new_project_path }
		it { should have_content('Новый проект') }
		it { should have_content('Название') }
		it { should have_content('Описание') }

		fill_in "Название",        with: "Тестовый проект"
		fill_in "Описание",        with: "Описание проекта"

		click_button "Создать"
		it { should have_content('Проект был успешно создан') }
	end

	describe "Edit" do
		before { visit edit_project_path }
	end

	describe "Delete" do 
		#before { visit edit_list_path }
	end
	
end