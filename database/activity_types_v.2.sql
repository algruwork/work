INSERT INTO access_service.user_limit_types
(code, threshold_login_per_hour, threshold_ip_per_hour, cooldown_period, description, otp_verification_actions_id)
VALUES
('EDIT_EMAIL', 3, 1000, 86000, 'User can not change email for 1 day', 0)
('EDIT_MOBILE_PHONE', 3, 1000, 86000, 'User can not change mobile phone number for 1 day', 0)
('VERIFY_EDIT_EMAIL', 9, 1000, 86000, 'User can not change email for 1 day', 5)
('VERIFY_EDIT_MOBILE_PHONE', 9, 1000, 86000, 'User can not change mobile phone number for 1 day', 6);
