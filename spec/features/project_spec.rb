require 'rails_helper'

describe Project do
subject { page }

	describe "Index projects" do
		it { should have_content('Проекты') } 
		
		it { should have_content('Название') }
		it { should have_content('Описание') }
		it { should have_content('Редактировать') } #Заменить на span edit
		it { should have_content('Удалить') } #Заменить на span trash
	end

	describe "Button new" do
		it { should have_content('Добавить') }
		it { should have_content('Добавить проект') }
	end

	describe "Create" do
		#Здесь должно быть событие нажатия на кнопку Add
		it { should have_content('Новый проект') }
		it { should have_content('Название') }
		it { should have_content('Описание') }

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