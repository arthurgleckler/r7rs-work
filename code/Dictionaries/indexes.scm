;;;; Indexes into dictionary vectors
;;; Add more at the end for new dictionary methods
;;; Add an entry to model-vec as well

(define d? 0)
(define dempty? 1)
(define dcontains? 2)
(define dref 3)
(define dref/default 4)
(define dset! 5)
(define dadjoin! 6)
(define ddelete! 7)
(define ddelete-all! 8)
(define dreplace! 9)
(define dintern! 10)
(define dupdate! 11)
(define dupdate/default! 12)
(define dpop! 13)
(define dmap! 14)
(define dfilter! 15)
(define dremove! 16)
(define dsearch! 17)
(define dsize 18)
(define dfor-each 19)
(define dcount 20)
(define dany 21)
(define devery 22)
(define dkeys 23)
(define dvalues 24)
(define dentries 25)
(define dfold 26)
(define dmap->list 27)
(define d->alist 28)


;;; Sample of a call to an internal procedure from another internal procedure:
;;; (dcall dref/default vec dict key default)

;;; Maps names to indexes

(define dname-map 
  `(dictionary? . ,d?)
   (dict-empty? . ,dempty?)
   (dict-contains? . ,dcontains?)
   (dict-ref . ,dref)
   (dict-ref/default . ,dref/default)
   (dict-set! . ,dset!)
   (dict-adjoin! . ,dadjoin!)
   (dict-delete! . ,ddelete!)
   (dict-delete-all! . ,ddelete-all!)
   (dict-replace! . ,dreplace!)
   (dict-intern! . ,dintern!)
   (dict-update! . ,dupdate!)
   (dict-update/default! . ,dupdate/default!)
   (dict-pop! . ,dpop!)
   (dict-map! . ,dmap!)
   (dict-filter! . ,dfilter!)
   (dict-remove! . ,dremove!)
   (dict-search! . ,dsearch!)
   (dict-size . ,dsize)
   (dict-for-each . ,dfor-each)
   (dict-count . ,dcount)
   (dict-any . ,dany)
   (dict-every . ,devery)
   (dict-keys . ,dkeys)
   (dict-values . ,dvalues)
   (dict-entries . ,dentries)
   (dict-fold . ,dfold)
   (dict-map->list . ,dmap->list)
   (dict->alist . ,d->alist))
