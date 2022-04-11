--fruits 테이블에 인덱스가 5개가 존재.
local fruits = {'apple', 'orange', 'watermelon', 'grapes', 'hamburger'}
local fruitsBasket = {} -- fruitsBasket 테이블 선언


--fruitsBasket 테이블안에 각 커스텀인덱스(apple,orange,watermelon,grapes,hamburger 를 지정하고 숙제의 문제에는 for문을 이용하여 벨류(갯수)값을 대입하라고 나와있기에 , 현재의 테이블에는 우선 0으로 대입함.
local fruitsBasket = {
  ['apple'] = 0,
  ['orange'] = 0,
  ['watermelon'] = 0,
  ['grapes'] = 0,
  ['hamburger'] = 0
}


-- k : 키값
-- v : 밸류 값

-- for 키 , 밸류 in pairs(테이블) do


for k , v in pairs(fruitsBasket) do -- for문을 이용하여 각 커스텀인덱스 키값에 v(밸류) 값 갯수를 대입.
  fruitsBasket.apple = 1
  fruitsBasket.orange = 2
  fruitsBasket.watermelon = 3
  fruitsBasket.grapes = 4
  -- 숙제에는 햄버거에는 갯수를 넣지말라고하셔서 햄버거는 따로 넣지않았습니다.
  print("사과의 갯수는 " ..fruitsBasket.apple.. " 개 입니다.") -- 사과 키값안에는 1이라는 밸류값이 대입이되었기에 1개의 갯수라고 프린트 출력.
end






local sum = 0 -- fruitsBasket 테이블 키값에 대입된 밸류값의 총갯수를 구하기위해 우선 sum이라는 변수를 선언하고 0을 대입


--[[

숙제에서 for문을 이용하여 총과일갯수를 구하라고 나왔다.

k , _가 나왔는데 아무래도 테이블 지식이 너무나약해서 요 몇일동안 Lua 테이블영상강의를 지속적으로 시청하였고 여기서 새로알게된 부분이있는데 K다음으로 오는 _가 v값이라는 점을 알게되었고
k , v 로 선언을 하여도 되지만 필자는 공부중이기에 v값을 모르는상태에서 오로지 키값만을 통해서 총갯수를 구해보자 라는 전제의 방식을 깔고 들어갔다.
그렇기 때문에 우리는 v값을 모른다고 진행을 하기위해서 코드의 가독성을 위해 v값은 _로 처리를 하였고
fruitsBasket테이블을 for문을 통해 순회를 하여 K값에 대입된 V값을 더하여 총과일 갯수를 출력하게 된다.


만일 for k ,v in pairs(fruitsBasket) 으로 진행하였을시 코드는 아래로도 실행이가능한걸 알게되었다

sum = sum + v
print(v)

]]

for k , _ in pairs(fruitsBasket) do 
  sum = sum + fruitsBasket[k]
end

print(sum)