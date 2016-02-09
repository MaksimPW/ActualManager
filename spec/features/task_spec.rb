require 'rails_helper'

describe Task do
subject { page }

	describe "List which tasks" do
		it { should have_content('Список заданий') } 
		
		it { should have_content('Статус') }
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should have_content('Дата') }
		it { should have_content('Контекст') }
		it { should have_content('Направления') }
		it { should have_content('Время исполнения') }

		it { should have_content('Редактировать') } #Заменить на span edit
		it { should have_content('Удалить') } #Заменить на span trash
	end

	describe "Button new" do
		it { should have_content('Добавить') }
		it { should have_content('Добавить задание') }
	end

	describe "Create" do
		#Здесь должно быть событие нажатия на кнопку Add
		it { should have_content('Новое задание') }
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should have_content('Дата') }
		it { should have_content('Контекст') }
		it { should have_content('Направления') }		

		#Заполнение полей
		#Нажатие на кнопку создать

		#Проверка правильности создания
	end

	describe "Edit" do
		#Редактирование
	end

	describe "Delete" do 
		#Удаление
	end
	
end