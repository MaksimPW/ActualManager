require 'rails_helper'

describe Task do
subject { page }
before { visit projects_path }

	describe "List which tasks" do
		# Здесь нужно создать список заданий с помощью фабрики
		# Здесь должен быть клик на какой-нибудь список заданий
		it { should have_content('Список заданий') } 
		
		it { should have_content('Статус') }
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should have_content('Дата') }
		it { should have_content('Контекст') }
		it { should have_content('Направления') }
		it { should have_content('Время исполнения') }

		it { should	have_selector('a', :value =>'Редактировать') }
		it { should	have_selector('a', :value =>'Удалить') }
	end

	describe "Button new" do
		it { should have_content('Добавить') }
		it { should have_link('Добавить задание', href: new_task_path) }
	end

	describe "Create" do
		before { visit new_task_path }
		it { should have_content('Новое задание') }
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should have_content('Дата') }
		it { should have_content('Контекст') }
		it { should have_content('Направления') }		

		fill_in "Название",        with: "Тестовое задание"
		fill_in "Описание",        with: "Описание"
		fill_in "Дата",        	   with: "10.10.10" # Посмотреть как правильно заполнять дату
		fill_in "Контекст",        with: "test" # Посмотреть как правильно заполнять выборочный список
		fill_in "Направления",     with: "test"

		click_button "Создать"
		it { should have_content('Задание было успешно создано')}

	end

	describe "Edit" do
		before { visit edit_list_path }
	end

	describe "Delete" do 
		#Удаление
	end
	
end