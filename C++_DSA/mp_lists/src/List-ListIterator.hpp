
class ListIterator : public std::iterator<std::bidirectional_iterator_tag, T> {
  private:
    // @TODO: graded in mp_lists part 1
    ListNode* position_;
    ListNode* tail_;

  public:
    ListIterator() : position_(NULL) { }
    ListIterator(ListNode* x) : position_(x) { }
    ListIterator(ListNode *x, ListNode* tail) : position_(x), tail_(tail) {}

    
    // Pre-Increment, ++iter
    ListIterator& operator++() {
        // @TODO: graded in mp_lists part 1
        position_ = position_->next;
        return *this;
    }
    
    // Post-Increment, iter++
    ListIterator operator++(int) {
        // @TODO: graded in mp_lists part 1
        ListNode* temp = position_;
        position_ = position_->next;
        return ListIterator(temp);
    }

    // Pre-Decrement, --iter
    ListIterator& operator--() {
        // @TODO: graded in mp_lists part 1
        if(position_ == NULL){
            position_ = tail_;
        }
        else{
            position_ = position_->prev;
        }
        
        return *this;
    }

    // Post-Decrement, iter--
    ListIterator operator--(int) {
        // @TODO: graded in mp_lists part 1
        if(position_ == NULL){
            ListIterator temp(position_,tail_);
            position_ = tail_;
            return temp;
        }
        else{
            ListIterator temp(position_,tail_);
            position_ = position_->prev;
            return temp;
        }
        
    }

    bool operator!=(const ListIterator& rhs) {
        // @TODO: graded in mp_lists part 1
        if(position_ == rhs.position_){
            return false;
        }
        return true;
    }

    bool operator==(const ListIterator& rhs) {
        return !(*this != rhs);
    }

    const T& operator*() {
        return position_->data;
    }

    const T* operator->() {
        return &(position_->data);
    }
};
