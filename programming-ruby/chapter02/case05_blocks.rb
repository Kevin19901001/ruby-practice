# Define a method and use 'yield' to call block
def call_block
  p "start of method..."
  yield
  yield
  p "end of method..."
end

call_block{ p "In the block..." }
