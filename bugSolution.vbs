Function ProperlyTypedFunction(param1, param2)
  'Explicitly declare variable types
  Dim result as Double

  'Convert inputs to appropriate types, handle potential errors
  On Error Resume Next
  param1 = CDbl(param1)
  param2 = CDbl(param2)
  If Err.Number <> 0 Then
    Err.Clear
    'Handle conversion errors appropriately
    'e.g., log error, return default value
    result = -1 'Or other error indication
    Exit Function
  End If
  
  'Perform calculations
  result = param1 + param2
  
  'Return the result
  ProperlyTypedFunction = result
End Function

'Example usage:
Dim a, b, c
a = "10"
b = 20
c = ProperlyTypedFunction(a,b)
MsgBox c 