require 'rails_helper'

describe List do
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
		it { should have_link('Добавить список заданий', href: new_list_path) }
	end

	describe "Create" do
		before { visit new_list_path }
		it { should have_content('Новый список заданий') }
		it { should have_content('Название') }
		it { should have_content('Описание') }

		fill_in "Название",        with: "Тестовый список заданий"
		fill_in "Описание",        with: "Это просто тестовый список заданий, который может содержать в себе тестовые задания"

		click_button "Создать"
		it { should have_content('Список заданий был успешно создан') }
	end

	describe "Edit" do
		before { visit edit_list_path }
	end

	describe "Delete" do 
		#before { visit delete_list_path }
	end
	
end