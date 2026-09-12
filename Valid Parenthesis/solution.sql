class Solution:
    def isValid(self, s: str) -> bool:
        #Map each closing bracket to its opening bracket
         bracket_map = {")": "(", "}": "{", "]": "["}
         stack = []
         for char in s:
            # If char is a closing bracket
            if char in bracket_map:
                top_element = stack.pop() if stack else '#'
            
            #If popped bracket matches the opening bracket
                if bracket_map[char] !=top_element:
                     return False
            else:
                stack.append(char)
         return len(stack) == 0        
