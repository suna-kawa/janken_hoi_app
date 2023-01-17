# じゃんけん処理

puts "じゃんけん..."

def janken(cpu_hand, player_hand, cpu_win, player_win)

if cpu_hand == player_hand
    puts "あいこで"
    return true

    
elsif player_hand == 0 && cpu_hand == 1 ||
    player_hand == 1 && cpu_hand == 2 ||
    player_hand == 2 && cpu_hand == 0
    puts "あなたの勝ちです"
    player_win
    return false

elsif cpu_hand == 0 && player_hand == 1 ||
    cpu_hand == 1 && player_hand == 2 ||
    cpu_hand == 2 && player_hand == 0
    puts "相手の勝ちです"
    cpu_win
    return false
    
elsif player_hand == 3
    puts "棄権"
    exit

else
    puts "ゲームオーバー"
    exit
    end
end

# あっち向いてホイ

def acchimuite_hoi(cpu_hand, player_hand, cpu_win, player_win)

    if cpu_hand == player_hand && cpu_win == 'CPU'
        puts "勝者はAIです"
        return false
        
    elsif cpu_hand == player_hand && player_win == 'PLAYER'
        puts "勝者はあなたです"
        return false

    else
        return true
    end
end

while true

janken_result = true
while janken_result 
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i 
    cpu_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{jankens[player_hand]}を出しました"
    puts "相手  : #{jankens[cpu_hand]}を出しました"
    puts "----------"
    janken_result = janken(cpu_hand, player_hand, 'CPU', 'PLAYER')
    
    if cpu_hand != player_hand
        break
    end
end

# ahm_game = true
# while ahm_game
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    player_hand = gets.to_i
    cpu_hand = rand(4)

    acms = ["上", "下", "左", "右"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{acms[player_hand]}"
    puts "相手  : #{acms[cpu_hand]}"
    puts "----------"
    ahm_game = acchimuite_hoi(cpu_hand, player_hand, 'CPU', 'PLAYER')

    if cpu_hand == player_hand
        break
    end
end