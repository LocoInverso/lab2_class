- -   T a b l e :   p u b l i c . " D i s c i p l i n e "  
  
 - -   D R O P   T A B L E   p u b l i c . " D i s c i p l i n e " ;  
  
 C R E A T E   T A B L E   p u b l i c . " D i s c i p l i n e "  
 (  
         d i s c i p l i n e _ i d   i n t e g e r   N O T   N U L L ,  
         d i s c i p l i n e _ n a m e   c h a r a c t e r   v a r y i n g ( 2 5 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t "   N O T   N U L L ,  
         d i s c i p l i n e _ d a t a   c h a r a c t e r   v a r y i n g ( 1 0 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t " ,  
         t a g _ p r o g r a m m i n g   b o o l e a n ,  
         t a g _ a l g o r i t h m   b o o l e a n ,  
         t a g _ g r a p h i c s   b o o l e a n ,  
         t a g _ d a t a b a s e s   b o o l e a n ,  
         t a g _ m a t h   b o o l e a n ,  
         C O N S T R A I N T   " D i s c i p l i n e _ p k e y "   P R I M A R Y   K E Y   ( d i s c i p l i n e _ i d )  
 )  
  
 T A B L E S P A C E   p g _ d e f a u l t ;  
  
 A L T E R   T A B L E   p u b l i c . " D i s c i p l i n e "  
         O W N E R   t o   p o s t g r e s ;  
  
  
 - -   T a b l e :   p u b l i c . " S t u d e n t "  
  
 - -   D R O P   T A B L E   p u b l i c . " S t u d e n t " ;  
  
 C R E A T E   T A B L E   p u b l i c . " S t u d e n t "  
 (  
         s t u d e n t _ i d   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ n a m e   c h a r a c t e r   v a r y i n g ( 2 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t "   N O T   N U L L ,  
         s t u d e n t _ s u r n a m e   c h a r a c t e r   v a r y i n g ( 2 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t "   N O T   N U L L ,  
         s t u d e n t _ a g e   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ s p e c   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ c o u r s e   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ g r o u p   c h a r a c t e r   v a r y i n g ( 6 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t "   N O T   N U L L ,  
         s t u d e n t _ p a s s w o r d   c h a r a c t e r   v a r y i n g ( 4 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t " ,  
         C O N S T R A I N T   " S t u d e n t _ p k e y "   P R I M A R Y   K E Y   ( s t u d e n t _ i d )  
 )  
  
 T A B L E S P A C E   p g _ d e f a u l t ;  
  
 A L T E R   T A B L E   p u b l i c . " S t u d e n t "  
         O W N E R   t o   p o s t g r e s ;  
  
  
 - -   T a b l e :   p u b l i c . " S e a r c h "  
  
 - -   D R O P   T A B L E   p u b l i c . " S e a r c h " ;  
  
 C R E A T E   T A B L E   p u b l i c . " S e a r c h "  
 (  
         s e a r c h _ i d   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ i d   i n t e g e r   N O T   N U L L ,  
         s e a r c h _ r e q u e s t   c h a r a c t e r   v a r y i n g ( 1 0 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t "   N O T   N U L L ,  
         s e a r c h _ r e q u e s t _ d a t e   t i m e s t a m p ( 4 )   w i t h o u t   t i m e   z o n e ,  
         s _ t a g _ p r o g r a m m i n g   b o o l e a n ,  
         s _ t a g _ a l g o r i t h m   b o o l e a n ,  
         s _ t a g _ g r a p h i c s   b o o l e a n ,  
         s _ t a g _ d a t a b a s e s   b o o l e a n ,  
         s _ t a g _ m a t h   b o o l e a n ,  
         C O N S T R A I N T   " S e a r c h 1 _ p k e y "   P R I M A R Y   K E Y   ( s e a r c h _ i d ) ,  
         C O N S T R A I N T   s t u d e n t _ f k _ i d   F O R E I G N   K E Y   ( s t u d e n t _ i d )  
                 R E F E R E N C E S   p u b l i c . " S t u d e n t "   ( s t u d e n t _ i d )   M A T C H   S I M P L E  
                 O N   U P D A T E   N O   A C T I O N  
                 O N   D E L E T E   N O   A C T I O N  
 )  
  
 T A B L E S P A C E   p g _ d e f a u l t ;  
  
 A L T E R   T A B L E   p u b l i c . " S e a r c h "  
         O W N E R   t o   p o s t g r e s ;  
  
  
 - -   T a b l e :   p u b l i c . " R e s u l t "  
  
 - -   D R O P   T A B L E   p u b l i c . " R e s u l t " ;  
  
 C R E A T E   T A B L E   p u b l i c . " R e s u l t "  
 (  
         r e s u l t _ i d   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ i d   i n t e g e r   N O T   N U L L ,  
         s e a r c h _ i d   i n t e g e r   N O T   N U L L ,  
         d i s c i p l i n e _ i d   i n t e g e r ,  
         d i s c i p l i n e _ n a m e   c h a r a c t e r   v a r y i n g ( 4 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t " ,  
         r e s u l t _ d a t a   c h a r a c t e r   v a r y i n g ( 1 0 0 )   C O L L A T E   p g _ c a t a l o g . " d e f a u l t " ,  
         C O N S T R A I N T   " R e s u l t _ p k e y "   P R I M A R Y   K E Y   ( r e s u l t _ i d ) ,  
         C O N S T R A I N T   " R e s u l t _ d i s c i p l i n e _ i d _ f k e y "   F O R E I G N   K E Y   ( d i s c i p l i n e _ i d )  
                 R E F E R E N C E S   p u b l i c . " D i s c i p l i n e "   ( d i s c i p l i n e _ i d )   M A T C H   S I M P L E  
                 O N   U P D A T E   N O   A C T I O N  
                 O N   D E L E T E   N O   A C T I O N  
                 N O T   V A L I D ,  
         C O N S T R A I N T   s e a r c h _ f k _ i d   F O R E I G N   K E Y   ( s e a r c h _ i d )  
                 R E F E R E N C E S   p u b l i c . " S e a r c h "   ( s e a r c h _ i d )   M A T C H   S I M P L E  
                 O N   U P D A T E   N O   A C T I O N  
                 O N   D E L E T E   N O   A C T I O N  
                 N O T   V A L I D ,  
         C O N S T R A I N T   s t u d e n t _ f k _ i d   F O R E I G N   K E Y   ( s t u d e n t _ i d )  
                 R E F E R E N C E S   p u b l i c . " S t u d e n t "   ( s t u d e n t _ i d )   M A T C H   S I M P L E  
                 O N   U P D A T E   N O   A C T I O N  
                 O N   D E L E T E   N O   A C T I O N  
                 N O T   V A L I D  
 )  
  
 T A B L E S P A C E   p g _ d e f a u l t ;  
  
 A L T E R   T A B L E   p u b l i c . " R e s u l t "  
         O W N E R   t o   p o s t g r e s ;  
  
  
 - -   T a b l e :   p u b l i c . l o g i n _ s e s s i o n  
  
 - -   D R O P   T A B L E   p u b l i c . l o g i n _ s e s s i o n ;  
  
 C R E A T E   T A B L E   p u b l i c . l o g i n _ s e s s i o n  
 (  
         l o g i n _ i d   i n t e g e r   N O T   N U L L ,  
         s t u d e n t _ i d   i n t e g e r   N O T   N U L L ,  
         l o g i n _ d a t e   t i m e s t a m p   w i t h o u t   t i m e   z o n e   N O T   N U L L ,  
         C O N S T R A I N T   l o g i n _ s e s s i o n _ p k e y   P R I M A R Y   K E Y   ( l o g i n _ i d ) ,  
         C O N S T R A I N T   s t u d e n t _ i d _ f k   F O R E I G N   K E Y   ( s t u d e n t _ i d )  
                 R E F E R E N C E S   p u b l i c . " S t u d e n t "   ( s t u d e n t _ i d )   M A T C H   S I M P L E  
                 O N   U P D A T E   N O   A C T I O N  
                 O N   D E L E T E   N O   A C T I O N  
 )  
  
 T A B L E S P A C E   p g _ d e f a u l t ;  
  
 A L T E R   T A B L E   p u b l i c . l o g i n _ s e s s i o n  
         O W N E R   t o   p o s t g r e s ;  
  
  
 