require 'rails_helper'

describe 'タスク管理機能', type: :system do
    describe '一覧表示機能' do
        before do
            user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
            FactoryBot.create(:task, name: '最初のタスク', user: user_a)
        end

        context 'ユーザーAがログインしているとき'do
            before do
                visit login_path
                fill_in 'メールアドレス', with: 'a@example.com'
                fill_in 'パスワード', with: 'password'
                click_button 'ログインする'
            end

            if 'ユーザーが作成したタスクが表示される' do
                
            end
        end
    end
end
