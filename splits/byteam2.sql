SELECT u.user_name, ARI_W.count AS ARI_W, ARI_L.count AS ARI_L, ATL_W.count AS ATL_W, ATL_L.count AS ATL_L, BAL_W.count AS BAL_W, BAL_L.count AS BAL_L, BUF_W.count AS BUF_W, BUF_L.count AS BUF_L, CAR_W.count AS CAR_W, CAR_L.count AS CAR_L, CHI_W.count AS CHI_W, CHI_L.count AS CHI_L, CIN_W.count AS CIN_W, CIN_L.count AS CIN_L, CLE_W.count AS CLE_W, CLE_L.count AS CLE_L, DAL_W.count AS DAL_W, DAL_L.count AS DAL_L, DEN_W.count AS DEN_W, DEN_L.count AS DEN_L, DET_W.count AS DET_W, DET_L.count AS DET_L, GB_W.count AS GB_W, GB_L.count AS GB_L, HOU_W.count AS HOU_W, HOU_L.count AS HOU_L, IND_W.count AS IND_W, IND_L.count AS IND_L, JAX_W.count AS JAX_W, JAX_L.count AS JAX_L, KC_W.count AS KC_W, KC_L.count AS KC_L, MIA_W.count AS MIA_W, MIA_L.count AS MIA_L, MIN_W.count AS MIN_W, MIN_L.count AS MIN_L, NE_W.count AS NE_W, NE_L.count AS NE_L, NO_W.count AS NO_W, NO_L.count AS NO_L, NYG_W.count AS NYG_W, NYG_L.count AS NYG_L, NYJ_W.count AS NYJ_W, NYJ_L.count AS NYJ_L, OAK_W.count AS OAK_W, OAK_L.count AS OAK_L, PHI_W.count AS PHI_W, PHI_L.count AS PHI_L, PIT_W.count AS PIT_W, PIT_L.count AS PIT_L, SD_W.count AS SD_W, SD_L.count AS SD_L, SF_W.count AS SF_W, SF_L.count AS SF_L, SEA_W.count AS SEA_W, SEA_L.count AS SEA_L, STL_W.count AS STL_W, STL_L.count AS STL_L, TB_W.count AS TB_W, TB_L.count AS TB_L, TEN_W.count AS TEN_W, TEN_L.count AS TEN_L, WAS_W.count AS WAS_W, WAS_L.count AS WAS_L FROM pl_users AS u LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'ARI' OR away_team = 'ARI') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS ARI_W ON u.user_name = ARI_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'ARI' OR away_team = 'ARI') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS ARI_L ON ARI_W.user_name = ARI_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'ATL' OR away_team = 'ATL') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS ATL_W ON ARI_L.user_name = ATL_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'ATL' OR away_team = 'ATL') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS ATL_L ON ATL_W.user_name = ATL_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'BAL' OR away_team = 'BAL') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS BAL_W ON ATL_L.user_name = BAL_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'BAL' OR away_team = 'BAL') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS BAL_L ON BAL_W.user_name = BAL_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'BUF' OR away_team = 'BUF') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS BUF_W ON BAL_L.user_name = BUF_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'BUF' OR away_team = 'BUF') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS BUF_L ON BUF_W.user_name = BUF_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CAR' OR away_team = 'CAR') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS CAR_W ON BUF_L.user_name = CAR_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CAR' OR away_team = 'CAR') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS CAR_L ON CAR_W.user_name = CAR_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CHI' OR away_team = 'CHI') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS CHI_W ON CAR_L.user_name = CHI_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CHI' OR away_team = 'CHI') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS CHI_L ON CHI_W.user_name = CHI_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CIN' OR away_team = 'CIN') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS CIN_W ON CHI_L.user_name = CIN_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CIN' OR away_team = 'CIN') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS CIN_L ON CIN_W.user_name = CIN_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CLE' OR away_team = 'CLE') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS CLE_W ON CIN_L.user_name = CLE_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'CLE' OR away_team = 'CLE') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS CLE_L ON CLE_W.user_name = CLE_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DAL' OR away_team = 'DAL') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS DAL_W ON CLE_L.user_name = DAL_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DAL' OR away_team = 'DAL') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS DAL_L ON DAL_W.user_name = DAL_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DEN' OR away_team = 'DEN') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS DEN_W ON DAL_L.user_name = DEN_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DEN' OR away_team = 'DEN') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS DEN_L ON DEN_W.user_name = DEN_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DET' OR away_team = 'DET') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS DET_W ON DEN_L.user_name = DET_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'DET' OR away_team = 'DET') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS DET_L ON DET_W.user_name = DET_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'GB' OR away_team = 'GB') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS GB_W ON DET_L.user_name = GB_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'GB' OR away_team = 'GB') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS GB_L ON GB_W.user_name = GB_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'HOU' OR away_team = 'HOU') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS HOU_W ON GB_L.user_name = HOU_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'HOU' OR away_team = 'HOU') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS HOU_L ON HOU_W.user_name = HOU_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'IND' OR away_team = 'IND') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS IND_W ON HOU_L.user_name = IND_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'IND' OR away_team = 'IND') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS IND_L ON IND_W.user_name = IND_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'JAX' OR away_team = 'JAX') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS JAX_W ON IND_L.user_name = JAX_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'JAX' OR away_team = 'JAX') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS JAX_L ON JAX_W.user_name = JAX_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'KC' OR away_team = 'KC') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS KC_W ON JAX_L.user_name = KC_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'KC' OR away_team = 'KC') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS KC_L ON KC_W.user_name = KC_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'MIA' OR away_team = 'MIA') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS MIA_W ON KC_L.user_name = MIA_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'MIA' OR away_team = 'MIA') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS MIA_L ON MIA_W.user_name = MIA_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'MIN' OR away_team = 'MIN') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS MIN_W ON MIA_L.user_name = MIN_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'MIN' OR away_team = 'MIN') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS MIN_L ON MIN_W.user_name = MIN_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NE' OR away_team = 'NE') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS NE_W ON MIN_L.user_name = NE_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NE' OR away_team = 'NE') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS NE_L ON NE_W.user_name = NE_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NO' OR away_team = 'NO') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS NO_W ON NE_L.user_name = NO_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NO' OR away_team = 'NO') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS NO_L ON NO_W.user_name = NO_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NYG' OR away_team = 'NYG') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS NYG_W ON NO_L.user_name = NYG_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NYG' OR away_team = 'NYG') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS NYG_L ON NYG_W.user_name = NYG_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NYJ' OR away_team = 'NYJ') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS NYJ_W ON NYG_L.user_name = NYJ_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'NYJ' OR away_team = 'NYJ') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS NYJ_L ON NYJ_W.user_name = NYJ_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'OAK' OR away_team = 'OAK') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS OAK_W ON NYJ_L.user_name = OAK_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'OAK' OR away_team = 'OAK') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS OAK_L ON OAK_W.user_name = OAK_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'PHI' OR away_team = 'PHI') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS PHI_W ON OAK_L.user_name = PHI_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'PHI' OR away_team = 'PHI') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS PHI_L ON PHI_W.user_name = PHI_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'PIT' OR away_team = 'PIT') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS PIT_W ON PHI_L.user_name = PIT_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'PIT' OR away_team = 'PIT') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS PIT_L ON PIT_W.user_name = PIT_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SD' OR away_team = 'SD') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS SD_W ON PIT_L.user_name = SD_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SD' OR away_team = 'SD') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS SD_L ON SD_W.user_name = SD_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SF' OR away_team = 'SF') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS SF_W ON SD_L.user_name = SF_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SF' OR away_team = 'SF') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS SF_L ON SF_W.user_name = SF_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SEA' OR away_team = 'SEA') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS SEA_W ON SF_L.user_name = SEA_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'SEA' OR away_team = 'SEA') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS SEA_L ON SEA_W.user_name = SEA_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'STL' OR away_team = 'STL') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS STL_W ON SEA_L.user_name = STL_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'STL' OR away_team = 'STL') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS STL_L ON STL_W.user_name = STL_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'TB' OR away_team = 'TB') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS TB_W ON STL_L.user_name = TB_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'TB' OR away_team = 'TB') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS TB_L ON TB_W.user_name = TB_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'TEN' OR away_team = 'TEN') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS TEN_W ON TB_L.user_name = TEN_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'TEN' OR away_team = 'TEN') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS TEN_L ON TEN_W.user_name = TEN_L.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'WAS' OR away_team = 'WAS') AND week != 0 AND pick IS NOT NULL AND result = 'win' GROUP BY user_name) AS WAS_W ON TEN_L.user_name = WAS_W.user_name LEFT OUTER JOIN (SELECT user_name, COUNT(*) AS count FROM pl_user_picks_vw WHERE (home_team = 'WAS' OR away_team = 'WAS') AND week != 0 AND pick IS NOT NULL AND result = 'loss' GROUP BY user_name) AS WAS_L ON WAS_W.user_name = WAS_L.user_name;