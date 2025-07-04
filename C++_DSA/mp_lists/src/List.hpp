/**
 * @file list.cpp
 * Doubly Linked List (MP 3).
 */

template <class T>
List<T>::List() { 
  // @TODO: graded in mp_lists part 1
    head_ = NULL;
    tail_ = NULL;
    length_ = 0;
}


/**
 * Returns a ListIterator with a position at the beginning of
 * the List.
 */
template <typename T>
typename List<T>::ListIterator List<T>::begin() const {
  // @TODO: graded in mp_lists part 1

  return List<T>::ListIterator(head_);
}

/**
 * Returns a ListIterator one past the end of the List.
 */
template <typename T>
typename List<T>::ListIterator List<T>::end() const {
  // @TODO: graded in mp_lists part 1
  return List<T>::ListIterator(NULL,tail_);
}


/**
 * Destroys all dynamically allocated memory associated with the current
 * List class.
 */
template <typename T>
void List<T>::_destroy() {
  /// @todo Graded in mp_lists part 1
  ListNode *curr = head_;
  while(curr != nullptr){
    ListNode *prev;
    prev = curr; 
    curr = curr->next;
    delete prev;
  }
  tail_ = nullptr;
  length_ = 0;

}

/**
 * Inserts a new node at the front of the List.
 * This function **SHOULD** create a new ListNode.
 *
 * @param ndata The data to be inserted.
 */
template <typename T>
void List<T>::insertFront(T const & ndata) {
  /// @todo Graded in mp_lists part 1
  ListNode * newNode = new ListNode(ndata);
  newNode -> next = head_;
  newNode -> prev = NULL;
  
  if (head_ != NULL) {
    head_ -> prev = newNode;
    head_ = newNode;
  }
  if (tail_ == NULL) {
    head_ = newNode;
  }
  
  length_++;
}

/**
 * Inserts a new node at the back of the List.
 * This function **SHOULD** create a new ListNode.
 *
 * @param ndata The data to be inserted.
 */
template <typename T>
void List<T>::insertBack(const T & ndata) {
  /// @todo Graded in mp_lists part 1
  ListNode *newNode = new ListNode(ndata);
  if(tail_ == nullptr){
    newNode->prev = nullptr;
    newNode->next = nullptr;
    head_ = newNode;
    tail_ = newNode;
  }
  else{
    newNode->next = nullptr;
    newNode ->prev = tail_;
    tail_->next = newNode;
    tail_ = newNode; 
  }

  length_++;
}

/**
 * Helper function to split a sequence of linked memory at the node
 * splitPoint steps **after** start. In other words, it should disconnect
 * the sequence of linked memory after the given number of nodes, and
 * return a pointer to the starting node of the new sequence of linked
 * memory.
 *
 * This function **SHOULD NOT** create **ANY** new List or ListNode objects!
 *
 * This function is also called by the public split() function located in
 * List-given.hpp
 *
 * @param start The node to start from.
 * @param splitPoint The number of steps to walk before splitting.
 * @return The starting node of the sequence that was split off.
 */
template <typename T>
typename List<T>::ListNode * List<T>::split(ListNode * start, int splitPoint) {
  /// @todo Graded in mp_lists part 1

  ListNode * curr = start;

  for (int i = 0; i < splitPoint && curr != NULL; i++) {
    curr = curr->next;
  }

  if (curr != NULL && splitPoint > 0) {
      curr->prev->next = NULL;
      curr->prev = NULL; 
  }

  return curr;
}

/**
 * Modifies the List using the waterfall algorithm.
 * Every other node (starting from the second one) is removed from the
 * List, but appended at the back, becoming the new tail. This continues
 * until the next thing to be removed is either the tail (**not necessarily
 * the original tail!**) or NULL.  You may **NOT** allocate new ListNodes.
 * Note that since the tail should be continuously updated, some nodes will
 * be moved more than once.
 */
template <typename T>
void List<T>::waterfall() {
  /// @todo Graded in part 1
  if(length_ == 0 || length_ == 1){
    return;
  }
  int count = 0;
  ListNode *curr = head_;
  ListNode *temp = curr;
  while(curr != NULL || curr != tail_){
    count++;
    if(count%2 == 0){
      temp = curr->next;
      tail_->next = curr;
      curr->prev->next = curr->next;
      curr->next->prev = curr->prev;
      curr->prev = tail_; 
      curr->next = NULL;
      tail_ = tail_->next;
      curr = temp;
    }
    else{
      curr = curr->next;
    }
  }
}


/**
 * Reverses the current List.
 */
template <typename T>
void List<T>::reverse() {
  reverse(head_, tail_);
}

/**
 * Helper function to reverse a sequence of linked memory inside a List,
 * starting at startPoint and ending at endPoint. You are responsible for
 * updating startPoint and endPoint to point to the new starting and ending
 * points of the rearranged sequence of linked memory in question.
 *
 * @param startPoint A pointer reference to the first node in the sequence
 *  to be reversed.
 * @param endPoint A pointer reference to the last node in the sequence to
 *  be reversed.
 */
template <typename T>
void List<T>::reverse(ListNode *& startPoint, ListNode *& endPoint) {
  /// @todo Graded in mp_lists part 2
  if(head_==NULL || tail_ == NULL){
    return;
  }
  if(startPoint == endPoint){
    return;
  }

  ListNode *start_prev = startPoint->prev;
  ListNode *end_next = endPoint->next;

  if(startPoint->prev != NULL){
    startPoint->prev->next = NULL;
  }
    startPoint->prev = NULL;

  if(endPoint->next != NULL){
    endPoint->next->prev = NULL;
  }
    endPoint->next = NULL;





  ListNode *curr = startPoint;
  ListNode *temp = NULL;

  while(curr != NULL){
    temp = curr->next;
    curr->next = curr->prev;
    curr->prev = temp;
    curr = curr->prev;
  }



  if(start_prev != NULL){
    start_prev->next = endPoint;
  }
  if(end_next != NULL){
    end_next->prev = startPoint;
  }
   endPoint->prev = start_prev;
   startPoint->next = end_next;

   temp = startPoint;
   startPoint = endPoint;
   endPoint = temp;
}
 
/**
 * Reverses blocks of size n in the current List. You should use your
 * reverse( ListNode * &, ListNode * & ) helper function in this method!
 *
 * @param n The size of the blocks in the List to be reversed.
 */
template <typename T>
void List<T>::reverseNth(int n) {
  /// @todo Graded in mp_lists part 2
  if(length_ == 1 || length_ == 0){
    return;
  }
  if(n >= length_){
    reverse(head_,tail_);
  }

  ListNode *startPoint = head_;
  ListNode *endPoint = head_;

  while(endPoint != NULL){
    for(int i=0; i<n-1; i++){
        if(endPoint->next == NULL)
          break;
        endPoint = endPoint->next;
    }
    reverse(startPoint, endPoint);

    if(endPoint->next == NULL){
      break;
    }
    startPoint = endPoint->next;
    endPoint = endPoint->next;
    // 3 2 1 4 5
  }
  
  while(startPoint->prev != NULL){
    startPoint = startPoint->prev;
  }
  head_ = startPoint;

  while(endPoint->next != NULL){
    endPoint = endPoint->next;
  }
  tail_ = endPoint;

}


/**
 * Merges the given sorted list into the current sorted list.
 *
 * @param otherList List to be merged into the current list.
 */
template <typename T>
void List<T>::mergeWith(List<T> & otherList) {
    // set up the current list
    head_ = merge(head_, otherList.head_);
    tail_ = head_;

    // make sure there is a node in the new list
    if (tail_ != NULL) {
        while (tail_->next != NULL)
            tail_ = tail_->next;
    }
    length_ = length_ + otherList.length_;

    // empty out the parameter list
    otherList.head_ = NULL;
    otherList.tail_ = NULL;
    otherList.length_ = 0;
}

/**
 * Helper function to merge two **sorted** and **independent** sequences of
 * linked memory. The result should be a single sequence that is itself
 * sorted.
 *
 * This function **SHOULD NOT** create **ANY** new List objects.
 *
 * @param first The starting node of the first sequence.
 * @param second The starting node of the second sequence.
 * @return The starting node of the resulting, sorted sequence.
 */
template <typename T>
typename List<T>::ListNode * List<T>::merge(ListNode * first, ListNode* second) {
  /// @todo Graded in mp_lists part 2
  //<1,2,3,4>
  //<2,4,5>
  if (first == NULL)
        return second;
 
  // If second linked list is empty then must return 
  if (second == NULL)
      return first;

  ListNode* curr = NULL;            //checking if temp and previous used as NULL then moving merges 
  ListNode* temp = NULL;
  if((second->data < first->data)){
    curr = first;
    first = second;                   //Checks each time to find which elemnt > then other then sets right for both 
    second = curr;
  }
  ListNode* ret = first;       //Ret node to return first pointer of list 
  curr = NULL;

  while(first != NULL && second != NULL){
    if(second->data < first->data){   //checks again but this time sets curr to switch if < element
      curr = first;
      first = second;
      second = curr;
    }

    if(temp != NULL)
      temp->next = first;

    first->prev = temp;
    temp = first;
    first = first->next;
  }

  if(second != NULL){   //check if temp null and find shortest list
    temp->next = second;
    second->prev = temp;
  }

  return ret;
}
  

/**
 * Sorts a chain of linked memory given a start node and a size.
 * This is the recursive helper for the Mergesort algorithm (i.e., this is
 * the divide-and-conquer step).
 *
 * Called by the public sort function in List-given.hpp
 *
 * @param start Starting point of the chain.
 * @param chainLength Size of the chain to be sorted.
 * @return A pointer to the beginning of the now sorted chain.
 */
template <typename T>
typename List<T>::ListNode* List<T>::mergesort(ListNode * start, int chainLength) {
  /// @todo Graded in mp_lists part 2

  if (!start || !start->next) // check first if start not a valid value 
        return start;
  int mid = (int)(chainLength/2);
  ListNode *second = split(start, mid); //left split

  start = mergesort(start, mid);                    //left and right split
  second = mergesort(second, length_ - mid);

  // Merge sorted halfs until recusion is done
  return merge(start,second);
}
