# じゃんけん処理

puts "じゃんけん..."

class Janken
  attr_accessor :cpu_hand, :player_hand
  
  def initialize(cpu_hand, player_hand)
    @cpu_hand = cpu_hand
    @player_hand = player_hand
  end
  
  def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    @player_hand = gets.to_i 
    @cpu_hand = rand(3)
    jankens = ["グー", "チョキ", "パー"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{jankens[@player_hand]}を出しました"
    puts "相手  : #{jankens[@cpu_hand]}を出しました"
    puts "----------"
    
    if @cpu_hand == @player_hand
      puts "あいこで"
      return true
    
    elsif @player_hand == 0 && @cpu_hand == 1 ||
      @player_hand == 1 && @cpu_hand == 2 ||
      @player_hand == 2 && @cpu_hand == 0
      puts "あなたの勝ちです"
      @winner = "player"
      acchimuite_hoi
    
    elsif @cpu_hand == 0 && @player_hand == 1 ||
      @cpu_hand == 1 && @player_hand == 2 ||
      @cpu_hand == 2 && @player_hand == 0
      puts "相手の勝ちです"
      @winner = "cpu"
      acchimuite_hoi
    
    elsif @player_hand == 3
      puts "棄権"
      exit
    
    else
      puts "ゲームオーバー"
      exit
    end
  end

  
  # あっち向いてホイ
  def acchimuite_hoi
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    @player_hand = gets.to_i
    @cpu_hand = rand(4)
    
    acms = ["上", "下", "左", "右"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{acms[@player_hand]}"
    puts "相手  : #{acms[@cpu_hand]}"
    puts "----------"
    
    if @cpu_hand == @player_hand && @winner == "cpu"
      puts "勝者はAIです"
      return false
    
    elsif @cpu_hand == @player_hand && @winner == "player"
      puts "勝者はあなたです"
      return false
    
    else
      janken
    end
  end
end

janken_result = true
while janken_result
  game = Janken.new(@cpu_hand, @player_hand)
  janken_result = game.janken
end