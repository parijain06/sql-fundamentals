-- the AND, OR and NOT operator
-- AND operator has higher precedence than OR operator
-- order can be changed using ()
SELECT *
FROM customers
-- AND operator
-- in AND operator, both of the conditions must be true
-- WHERE birth_date >= '1986-01-01' AND points <= 1500

-- OR operator
-- In SQL, we cannot combine two strings directly after a boolean condition
-- in OR operator, atleast one of the condition must be true
-- WHERE birth_date >= '1986-01-01' OR points <= 1500 AND state = 'va'
-- WHERE state = 'va' OR state = 'fl' or state = 'tx'

-- NOT operator
-- WHERE NOT(birth_date >= '1986-01-01' AND points <= 1500)

-- IN operator
-- WHERE state = 'va' OR state = 'fl' or state = 'tx' can be written easily using IN operator
-- WHERE state IN ('va','tx','fl')
-- WHERE state NOT IN ('va','tx','fl')

-- BETWEEN OPERATOR
-- WHERE points >=1000 and points <= 3000
-- WHERE points BETWEEN 1000 and 3000




