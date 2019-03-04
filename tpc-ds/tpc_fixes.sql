ALTER TABLE TPCDS.CATALOG_PAGE
  ADD cp_promo_id number;

update  CATALOG_PAGE t1
  SET CP_PROMO_ID = (select t2.P_PROMO_SK from PROMOTION t2
                       where t1.CP_CATALOG_PAGE_SK=t2.P_PROMO_SK)
WHERE EXISTS(
     SELECT t2.P_PROMO_SK from PROMOTION t2
      WHERE t1.CP_CATALOG_PAGE_SK=t2.P_PROMO_SK
   );
commit;

