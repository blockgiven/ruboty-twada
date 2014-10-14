module Ruboty
  module Handlers
    class Twada < Base
      using ::Ruboty::Twada::Savannah

      on /(?:(全く|全然|一切|1つも|まったく|ぜんぜん|いっさい)?テスト(全く|全然|1つ)?(も|を|は|が)?(書いて|かいて|足して|足り|して)?ない|ノーテスト)/, name: 'lion', description: 'テスト書いてないとかお前それ @t_wada の前でもでも同じこと言えんの?', all: true

      def lion(message)
        message.reply(Ruboty::Twada::Lion.new.to_s)
      end
    end
  end
end
