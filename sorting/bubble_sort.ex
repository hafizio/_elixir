defmodule BubbleSort do
  @moduledoc """
  Video: https://www.youtube.com/watch?v=8Kp-8OGwphY

  One of the oldest sorting algorithms is Bubble sort the idea behind the sort is to make repeated passes through the list from beginning to end, comparing adjacent elements and swapping any that are out of order. After the first pass, the largest element will have been moved to the end of the list; after the second pass, the second largest will have been moved to the penultimate position; and so forth. The idea is that large values "bubble up" to the top of the list on each pass.

  It should be clear that the algorithms does exactly the same key comparisons no matter what the contents of the array, so we need only consider the basic complexity of the algorithm.

  On the first pass through the data, every element in the array but the first is compared with its predecessor, so n-1 comparisons are made. On the next pass, one less comparison is made, so n-2 comparisons are made. This continues until the last pass, where only one comparison is made. The total number of comparisons is thus given by the following summation.

  C(n) = ∑i=1 to n-1i = n(n-1)/2
  Clearly, n(n-1)/2 ∈ O(n2)

  Bubble sort is not very fast. Various suggestions have been made to improve it. For example, a Boolean variable can be set to false at the beginning of each pass through the list and set to true whenever a swap is made. If the flag is false when the pass is completed, then no swaps were done and the array is sorted, so the algorithm can halt. This gives exactly the same worst case complexity, but a best case complexity of only n. The average case complexity is still in O(n2), however, so this is not much of an improvement.
  """

  @doc """
  Reverse a list, when first parameter is a list
  """
  def reverse(list) when is_list(list) do
    reverse(list, [])
  end

  @doc """
  Shifts the top of the list to the bottom of the accumulator
  """
  def reverse([head|tail], accumulator) do
    reverse(tail, [head|accumulator])
  end

  @doc """
  Base case, when there are no more elements in the list, return the accumulated list
  """
  def reverse([], accumulator) do
    accumulator
  end

  @doc """
  Sorts a list of integers from lowest to highest
  """
  def sort(list) when is_list(list) do
    # complete will short circuit the algorithm
    sort(list, [], :complete)
  end

  @doc """
  Accepts a list containing at least 3 elements, an accumulator and disregards the status parameter, but only if the head > second. If so, then it sorts again with the first stacked on top of the tail as the new list, and second stacked on top of the accumulator as the new accumulator, passing a incomplete status
  passing instance (bubbling up the x):
  v
  [xyzzzzzz]
  v
  [yxzzzzzz]
  v
  [yzxzzzzz]
  (left side of the v is the accumulated sorted instance for a single pass, right side of the v is the list to be sorted for this instance of a single pass)
  old list: [x | y | zzzz]
  old accumulator: [a]
  new list: [x | zzzz]
  new accumulator: [y | a]
  The accumulator is acting as the reverse of a sorted pass. As the sorting passes over the elements, it creates an accumulator holding the sorted elements in reverse. The reverse is just there for performance, since prepending is faster than appending in a linked list.
  """
  def sort([first|[second|tail]], accumulator, _status) when first > second do
    sort([first|tail], [second|accumulator], :incomplete)
  end

  @doc """
  Accepts a list containing at least 2 elements, an accumulator and any status. The head in this case can be either the last element in the array, or an element that is not greater than the second element.
  old list: [x | zzzz]
  old accumulator: [a]
  new list: [zzzz]
  new accumulator: [x | a]
  Because the head is not bigger than the second, then the head can be pushed onto the accumulator as it is now sorted in this **instance** of sorting. In this case, the status is also just complete on, as it does not know whether the pass has ended.
  """
  def sort([head|tail], accumulator, status) do
    sort(tail, [head|accumulator], status)
  end

  @doc """
  Accepts an empty list, an accumulator list, and an incomplete status
  It will sort again, but this time with the reversed accumulator as the list, and an empty accumulator with a complete status.
  This the part where passes over the list are restarted. Because the bubble sort needs to go back to beginning of the list and try bubbling again.
  If there are no elements that can be bubbled up, then :complete will not change to :incomplete, and will just go through `sort([head|tail], accumulator, status)`, which will forward the :complete, until there is no tail, and then it will go to `sort([], accumulator, :complete)`, which will return the reversed accumulator. In this pass instance, it is the last pass, and there will always be one last pass which will run and make sure there is no more bubbling required.
  """
  def sort([], accumulator, :incomplete) do
    sort(reverse(accumulator), [], :complete)
  end

  @doc """
  Accepts an empty list, an accumulator list, and a complete status.
  This is the base case, if there is no more elements to sort, return the reversed accumulator.
  """
  def sort([], accumulator, :complete) do
    reverse(accumulator)
  end

end
