--N=899
--Puzzle: Quadratic Congruences reduction (Final Attack Orders, Bad Reaction to Simochi)
Debug.SetAIName("Player 2")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,5)
Debug.SetPlayerInfo(0,150863251,0,1)
Debug.SetPlayerInfo(1,150863250,0,1)
Debug.AddCard(52503575,0,0,LOCATION_SZONE,0,POS_FACEUP)
local dna=Debug.AddCard(74701381,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(40633297,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(3573512,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local cb=Debug.AddCard(74440055,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
local ca=Debug.AddCard(74440055,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.PreEquip(Debug.AddCard(1118137,1,1,LOCATION_SZONE,1,POS_FACEUP),cb)
Debug.AddCard(1834107,1,1,LOCATION_SZONE,3,POS_FACEUP)
for i=1,5 do Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN) Debug.AddCard(89631139,1,1,LOCATION_DECK,0,POS_FACEDOWN) end
Debug.ReloadFieldEnd()
--DNA Surgery face-up with Thunder declared
for _,e in ipairs({dna:GetOwnEffects()}) do if e:GetCode()==EFFECT_CHANGE_RACE then e:SetLabel(RACE_THUNDER) end end
dna:SetHint(CHINT_RACE,RACE_THUNDER)
--binary-encoded continuous ATK modifiers (the construction's input convention)
for c,atk in pairs({[cb]=225500,[ca]=225250}) do
  local e=Effect.CreateEffect(c) e:SetType(EFFECT_TYPE_SINGLE) e:SetCode(EFFECT_UPDATE_ATTACK) e:SetValue(atk-1900) c:RegisterEffect(e)
end
aux.BeginPuzzle()
Debug.ShowHint("N=899")
