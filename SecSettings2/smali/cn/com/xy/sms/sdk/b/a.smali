.class public final Lcn/com/xy/sms/sdk/b/a;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_430b2237f18c4c793d4e025abe5dcd4b.png</v_hd_del><v_hd_close>1_01dfb9f94b6ab802656e16619b0e0e6f.png</v_hd_close><v_hd_bg>#2e94e1</v_hd_bg><v_bt_by_sp_bg>#2e93e1</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

.field private static b:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_2c6aa6ee55d09f274f312f9701982947.png</v_hd_del><v_hd_close>1_4a43b040c5ce163d5db96bdde9724fd5.png</v_hd_close><v_hd_bg>#2e94e1</v_hd_bg><v_bt_by_sp_bg>#2e93e1</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

.field private static c:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_d19e64f3c2c90fc61ad6eb8b0a214aff.png</v_hd_del><v_hd_close>1_6099165f4f4f01d911252818cc0e851c.png</v_hd_close><v_hd_bg>S#0eabaa;E#0C9DBD</v_hd_bg><v_bt_by_sp_bg>SW2;S#0eabaa;E#0C9DBD</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

.field private static d:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_6aba2f9cf8a52365e40c404ecc89e52d.png</v_hd_del><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

.field private static e:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_6aba2f9cf8a52365e40c404ecc89e52d.png</v_hd_del><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

.field private static f:Ljava/lang/String; = "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#F0F0F0</v_by_card_bg><v_lt_stk>#9fb5ca</v_lt_stk><v_by_bg>#f0f0f0</v_by_bg><v_hd_close>F40A881C456538D330ED67AFA042134A.png</v_hd_close><v_hd_bg>TL3;TR3;S#f0f0f0</v_hd_bg><v_bt_bg>#fafafa</v_bt_bg></popu></popus></title_01001001></titles>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcn/com/xy/sms/sdk/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_2c6aa6ee55d09f274f312f9701982947.png</v_hd_del><v_hd_close>1_4a43b040c5ce163d5db96bdde9724fd5.png</v_hd_close><v_hd_bg>#2e94e1</v_hd_bg><v_bt_by_sp_bg>#2e93e1</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_d19e64f3c2c90fc61ad6eb8b0a214aff.png</v_hd_del><v_hd_close>1_6099165f4f4f01d911252818cc0e851c.png</v_hd_close><v_hd_bg>S#0eabaa;E#0C9DBD</v_hd_bg><v_bt_by_sp_bg>SW2;S#0eabaa;E#0C9DBD</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_6aba2f9cf8a52365e40c404ecc89e52d.png</v_hd_del><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_3
    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#F0F0F0</v_by_card_bg><v_lt_stk>#9fb5ca</v_lt_stk><v_by_bg>#f0f0f0</v_by_bg><v_hd_close>F40A881C456538D330ED67AFA042134A.png</v_hd_close><v_hd_bg>TL3;TR3;S#f0f0f0</v_hd_bg><v_bt_bg>#fafafa</v_bt_bg></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_4
    :try_start_4
    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_6aba2f9cf8a52365e40c404ecc89e52d.png</v_hd_del><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_5
    :try_start_5
    const-string/jumbo v0, "<titles><title_01001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_430b2237f18c4c793d4e025abe5dcd4b.png</v_hd_del><v_hd_close>1_01dfb9f94b6ab802656e16619b0e0e6f.png</v_hd_close><v_hd_bg>#2e94e1</v_hd_bg><v_bt_by_sp_bg>#2e93e1</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_lt_bg>#FFFFFF</v_lt_bg><v_lt_stk>#9db6ca</v_lt_stk></popu></popus></title_01001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcn/com/xy/sms/sdk/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Lcn/com/xy/sms/sdk/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "01003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    const-string/jumbo v2, "02023002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "02025002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "02010001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "02010002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    const-string/jumbo v0, "<titles><title_02010002><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#F0F0F0</v_by_card_bg><v_by_bg>#FD8B00</v_by_bg><v_hd_del>1_d8ead49e9e8f07cf80c7f36cbc7c05dc.png</v_hd_del><v_hd_close>close.png</v_hd_close><v_hd_bg>TL3;TR3;S#FFFFFF</v_hd_bg><v_bt_bg>#FFFFFF</v_bt_bg><v_hd_sp_bg>#307dd5</v_hd_sp_bg><v_by_cir>#307dd5</v_by_cir><v_by_bt_bg>#E06616</v_by_bt_bg><v_ld_tx>laidian.jpg</v_ld_tx><v_cpy_logo>test.jpg</v_cpy_logo></popu></popus></title_02010002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    :cond_1
    :goto_1
    const-string/jumbo v2, "businessTitle"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "<titles><title_01003004><popus><popu><layoutName>duoqu_popup</layoutName><v_cpy_logo>bank_logo.jpg</v_cpy_logo><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_d8ead49e9e8f07cf80c7f36cbc7c05dc.png</v_hd_del><v_hd_close>1_e3b50ad6b620985565cb9804a96ffe96.png</v_hd_close><v_bt_by_sp_bg>#2e93e1</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_hd_bg_one>#385DAB</v_hd_bg_one><v_hd_bg_two>#FFFFFF</v_hd_bg_two><v_hd_bg_thr>#16357C</v_hd_bg_thr><v_hd_bg_for>#457FC6</v_hd_bg_for></popu></popus></title_01003004></titles>"

    const-string/jumbo v2, "NQIDAQABCOOL"

    sget-object v3, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "<titles><title_01003004><popus><popu><layoutName>duoqu_popup</layoutName><v_cpy_logo>bank_logo.jpg</v_cpy_logo><v_by_bg>#ffffff</v_by_bg><v_hd_del>1_d8ead49e9e8f07cf80c7f36cbc7c05dc.png</v_hd_del><v_hd_close>1_e3b50ad6b620985565cb9804a96ffe96.png</v_hd_close><v_bt_by_sp_bg>SW2;S#457dc5;E#2663b2</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_hd_bg_one>TL8;TR0;S#457dc5</v_hd_bg_one><v_hd_bg_two>TL0;TR8;S#FFFFFF</v_hd_bg_two><v_hd_bg_thr>#034aa6</v_hd_bg_thr><v_hd_bg_for>S#457dc5;E#2663b2</v_hd_bg_for></popu></popus></title_01003004></titles>"

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "<titles><title_02023><popus><popu><thunder_v_hd_bg>TL8;TR8;S#FA5F00</thunder_v_hd_bg><sunny_v_hd_bg>TL8;TR8;S#FBB900</sunny_v_hd_bg><v_by_bt_bg>#e2e2e2</v_by_bt_bg><v_hd_sp_bg>#00a9e1</v_hd_sp_bg><v_hd_bg>TL8;TR8;S#FFFFFF</v_hd_bg><v_hd_close>close.png</v_hd_close><v_l_bg>#4dc2eb</v_l_bg><img_sunny>sunny.png</img_sunny><img_thunder>thunder.png</img_thunder><img_rain>rain.png</img_rain><img_cloud>cloud.png</img_cloud><img_cloudy>cloudy.png</img_cloudy><img_wind>wind.png</img_wind><img_snow>snow.png</img_snow><thunder_v_by_bg>#FA5F00</thunder_v_by_bg><sunny_v_by_bg>#FBB900</sunny_v_by_bg><thunder_v_by_bt_bg>#FFFFFF</thunder_v_by_bt_bg><sunny_v_by_bt_bg>#FFFFFF</sunny_v_by_bt_bg><thunder_v_l_bg>#FFFFFF</thunder_v_l_bg><sunny_v_l_bg>#FFFFFF</sunny_v_l_bg><duoqu_drop_th>duoqu_drop_th.png</duoqu_drop_th><duoqu_drop_sunny>duoqu_drop_sunny.png</duoqu_drop_sunny><duoqu_drop_def>duoqu_drop_def.png</duoqu_drop_def><duoqu_back_orage>duoqu_back_orage.png</duoqu_back_orage><duoqu_back_yellow>duoqu_back_yellow.png</duoqu_back_yellow><duoqu_back_blue></duoqu_back_blue><duoqu_more_orage>duoqu_more_orage.png</duoqu_more_orage><duoqu_more_yellow>duoqu_more_yellow.png</duoqu_more_yellow><duoqu_more_blue>duoqu_more_blue.png</duoqu_more_blue><v_tc_def>#00a9e2</v_tc_def><v_tc_th>#fa6000</v_tc_th><v_tc_sunny>#fbba00</v_tc_sunny><v_hd_sp_bg_th>#fa6000</v_hd_sp_bg_th><v_hd_sp_bg_def>#00a9e2</v_hd_sp_bg_def><v_hd_sp_bg_sunny>#fbba00</v_hd_sp_bg_sunny></popu></popus></title_02023></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "<titles><title_02010002><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>1_6aba2f9cf8a52365e40c404ecc89e52d.png</v_hd_del><v_hd_close>1_e3b50ad6b620985565cb9804a96ffe96.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_bt_bg>#FFFFFF</v_bt_bg><v_by_bt_bg>#1c81d1</v_by_bt_bg><duoqu_content_lan>#FFFFFF</duoqu_content_lan><duoqu_yujing_cheng>a2.png</duoqu_yujing_cheng><duoqu_yujing_hong>a4.png</duoqu_yujing_hong><duoqu_yujing_huang>a3.png</duoqu_yujing_huang><duoqu_yujing_lan>a1.png</duoqu_yujing_lan><duoqu_dian_cheng>lei.png</duoqu_dian_cheng><duoqu_dian_hong>lei.png</duoqu_dian_hong><duoqu_dian_huang>lei.png</duoqu_dian_huang><duoqu_dian_lan>lei.png</duoqu_dian_lan><duoqu_feng_cheng>feng.png</duoqu_feng_cheng><duoqu_feng_hong>feng.png</duoqu_feng_hong><duoqu_feng_huang>feng.png</duoqu_feng_huang><duoqu_feng_lan>feng.png</duoqu_feng_lan><duoqu_gao_cheng>gao.png</duoqu_gao_cheng><duoqu_gao_hong>gao.png</duoqu_gao_hong><duoqu_gao_huang>gao.png</duoqu_gao_huang><duoqu_jian_cheng>jiangwen.png</duoqu_jian_cheng><duoqu_jian_huang>jiangwen.png</duoqu_jian_huang><duoqu_jian_lan>jiangwen.png</duoqu_jian_lan><duoqu_leifeng_cheng>leifeng.png</duoqu_leifeng_cheng><duoqu_leifeng_hong>leifeng.png</duoqu_leifeng_hong><duoqu_leifeng_huang>leifeng.png</duoqu_leifeng_huang><duoqu_leifeng_lan>leifeng.png</duoqu_leifeng_lan><duoqu_qi_cheng>dafeng.png</duoqu_qi_cheng><duoqu_qi_hong>dafeng.png</duoqu_qi_hong><duoqu_qi_huang>dafeng.png</duoqu_qi_huang><duoqu_qi_lan>dafeng.png</duoqu_qi_lan><duoqu_sha_hong>sha.png</duoqu_sha_hong><duoqu_sha_cheng>sha.png</duoqu_sha_cheng><duoqu_sha_huang>sha.png</duoqu_sha_huang><duoqu_yu_hong>yu.png</duoqu_yu_hong><duoqu_yu_cheng>yu.png</duoqu_yu_cheng><duoqu_yu_huang>yu.png</duoqu_yu_huang><duoqu_wu_hong>wu.png</duoqu_wu_hong><duoqu_wu_cheng>wu.png</duoqu_wu_cheng><duoqu_wu_huang>wu.png</duoqu_wu_huang><duoqu_content_cheng>#FFFFFF</duoqu_content_cheng><duoqu_content_hong>#FFFFFF</duoqu_content_hong><duoqu_content_huang>#FFFFFF</duoqu_content_huang><duoqu_content_lan>#FFFFFF</duoqu_content_lan><duoqu_bottom_cheng>#e2e2e2</duoqu_bottom_cheng><duoqu_bottom_hong>#e2e2e2</duoqu_bottom_hong><duoqu_bottom_huang>#e2e2e2</duoqu_bottom_huang><duoqu_bottom_lan>#e2e2e2</duoqu_bottom_lan><v_tc_hong>#e5354a</v_tc_hong><v_tc_huang>#fbba00</v_tc_huang><v_tc_lan>#00a9e2</v_tc_lan><v_tc_cheng>#fa6000</v_tc_cheng><v_hd_sp_bg_hong>#e5354a</v_hd_sp_bg_hong><v_hd_sp_bg_huang>#fbba00</v_hd_sp_bg_huang><v_hd_sp_bg_lan>#00a9e2</v_hd_sp_bg_lan><v_hd_sp_bg_cheng>#fa6000</v_hd_sp_bg_cheng></popu></popus></title_02010002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "<titles><title_02010002><popus><popu><layoutName>duoqu_popup</layoutName><v_by_bg>#FD8B00</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FD8B00</v_hd_bg><v_bt_bg>#FFFFFF</v_bt_bg><v_by_bt_bg>#E06616</v_by_bt_bg><v_ld_tx>laidian_logo.jpg</v_ld_tx></popu></popus></title_02010002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "02010003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "02013001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_9
    const-string/jumbo v2, "02001001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    :goto_3
    const-string/jumbo v0, "<titles><title_02001001><popus><popu><layoutName>duoqu_popup</layoutName><v_lt_stk>#9fb5ca</v_lt_stk><v_by_bg>#f0f0f0</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>TL0;TR0;S#f0f0f0</v_hd_bg><v_hd_sp_bg>#0072b6</v_hd_sp_bg><v_bt_bg>#fafafa</v_bt_bg><view_hd_line>TL8;TR8;S#f0f0f0</view_hd_line><v_cpy_logo>yidong.png</v_cpy_logo><v_bt_by_sp_bg>#fafafa</v_bt_by_sp_bg></popu></popus></title_02001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "<titles><title_02001001><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#ffffff</v_hd_bg><v_hd_sp_bg>#d90123</v_hd_sp_bg><v_bt_by_sp_bg>#d90123</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_cpy_logo>2_f9a4397207f121237641d99081c2d86a.png</v_cpy_logo></popu></popus></title_02001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v2, "01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_d
    const-string/jumbo v2, "02002001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02003001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02004001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02005001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02006001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02007001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02008001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    const-string/jumbo v2, "02001002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    :goto_4
    const-string/jumbo v0, "<titles><title_02001001><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#F0F0F0</v_by_card_bg><v_lt_stk>#9fb5ca</v_lt_stk><v_by_bg>#f0f0f0</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>TL3;TR3;S#f0f0f0</v_hd_bg><v_bt_by_sp_bg>#0072b6</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_cpy_logo>yidong.png</v_cpy_logo><v_bt_by_sp_bg>#fafafa</v_bt_by_sp_bg></popu></popus></title_02001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_11
    const-string/jumbo v2, "02002002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02003002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02004002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02005002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02006002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02007002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02008002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    const-string/jumbo v2, "02001003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    :goto_5
    const-string/jumbo v0, "<titles><title_02001001><popus><popu><layoutName>duoqu_popup</layoutName><v_lt_stk>#9fb5ca</v_lt_stk><v_by_bg>#f0f0f0</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>TL0;TR0;S#f0f0f0</v_hd_bg><view_hd_line>TL8;TR8;S#f0f0f0</view_hd_line><v_bt_by_sp_bg>#0072b6</v_bt_by_sp_bg><v_bt_bg>#ffffff</v_bt_bg><v_cpy_logo>yidong.png</v_cpy_logo><v_bt_by_sp_bg>#fafafa</v_bt_by_sp_bg></popu></popus></title_02001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v2, "03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_5

    :cond_15
    const-string/jumbo v2, "02002003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02003003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02004003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02005003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02006003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02007003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "02008003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "13001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v0, "<titles><title_02001001><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_by_bg>#ffffff</v_by_bg><v_hd_bg>#ffffff</v_hd_bg><v_hd_sp_bg>#CF4059</v_hd_sp_bg><v_cpy_logo>dianxin.png</v_cpy_logo><v_lt_stk>#C99D9E</v_lt_stk></popu></popus></title_02001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v2, "13002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "13003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "13005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "05015"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v0, "<titles><title_05015004><popus><popu><v_lt_stk>#9fb5ca</v_lt_stk><v_text_big_color>#333333</v_text_big_color><v_by_bt_bg>#FFFFFF</v_by_bt_bg><v_hd_bg>#FFFFFF</v_hd_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_cpy_logo>2_1cf05c8e6c46455c1b4af9c89e7085f9.png</v_cpy_logo><v_by_bt_bg>#FFFFFF</v_by_bt_bg><v_hd_bg>#FFFFFF</v_hd_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_del>1_581b57a08857281653f5180dea95f7cf.png</v_hd_del><v_hd_close>1_a0f2f38a6a05bd692573f1826980dbce.png</v_hd_close></popu></popus></title_05015004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v2, "05016"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "05017"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "05001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v0, "<titles><title_05001001><popus><popu><v_by_card_bg>#f5f5f5</v_by_card_bg><v_hd_bg>TL3;TR3;S#f5f5f5</v_hd_bg><v_hd_bg>#f5f5f5</v_hd_bg><v_center_icon>sq_air.png</v_center_icon><v_text_big_color>#383838</v_text_big_color><v_text_small_color>#808080</v_text_small_color><v_text_top_color>#4ca5f7</v_text_top_color><v_by_bt_bg>#d2e2f1</v_by_bt_bg><v_cpy_logo>1_b98cc828a05786501d8a5192a2a5730c.jpg</v_cpy_logo><v_by_bg>#f5f5f5</v_by_bg><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close></popu></popus></title_05001001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v2, "05002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "05003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "05007"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "05004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "05008"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v0, "<titles><title_05008008><popus><popu><v_air_img>black_air.png</v_air_img><v_text_big_color>#333333</v_text_big_color><v_text_small_color>#666666</v_text_small_color><v_hd_sp_bg>#307DD5</v_hd_sp_bg><v_cpy_logo>2_1cf05c8e6c46455c1b4af9c89e7085f9.png</v_cpy_logo><v_by_bt_bg>#FFFFFF</v_by_bt_bg><v_hd_bg>#FFFFFF</v_hd_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_del>1_581b57a08857281653f5180dea95f7cf.png</v_hd_del><v_hd_close>1_a0f2f38a6a05bd692573f1826980dbce.png</v_hd_close></popu></popus></title_05008008></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v2, "05009"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "05010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "05013"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "05014"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "11101001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v0, "<titles><title_11101004><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#f0f0f0</v_by_card_bg><v_cpy_logo>shunfeng.png</v_cpy_logo><v_hd_close>close.png</v_hd_close><v_by_bg>#f0f0f0</v_by_bg><v_hd_bg>TL3;TR3;S#f0f0f0</v_hd_bg><v_lt_stk>#cdcdcd</v_lt_stk><v_bt_by_sp_bg>#e0e0e0</v_bt_by_sp_bg></popu></popus></title_11101004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v2, "11102001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string/jumbo v2, "11101003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v0, "<titles><title_11101004><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_sp_bg>#2abb8a</v_hd_sp_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_lt_stk>#c0d2b8</v_lt_stk><v_cpy_logo>2_0d53599161048bac4eb414e9da8b544a.png</v_cpy_logo></popu></popus></title_11101004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v2, "11102003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "11101005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v0, "<titles><title_11101004><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_sp_bg>#f1b80c</v_hd_sp_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_lt_stk>#FCD278</v_lt_stk><v_cpy_logo>2_ab4b21ac6bd2f7730ff9bc5a3b120b3a.png</v_cpy_logo></popu></popus></title_11101004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v2, "11102005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "11101008"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v0, "<titles><title_11101004><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_sp_bg>#f1b80c</v_hd_sp_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_lt_stk>#FCD278</v_lt_stk><v_cpy_logo>shentong_logo.png</v_cpy_logo></popu></popus></title_11101004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v2, "11102008"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "11101004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v0, "<titles><title_11101004><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_sp_bg>#895DAB</v_hd_sp_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_lt_stk>#DBC5DE</v_lt_stk><v_cpy_logo>2_7761a60cd0b5e53c7f7b5f1e69ee57bc.png</v_cpy_logo></popu></popus></title_11101004></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v2, "11102004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "11101002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v0, "<titles><title_11101002><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_sp_bg>#2abb8a</v_hd_sp_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_lt_stk>#c0d2b8</v_lt_stk><v_cpy_logo>2_59e85e0ad851857d53bb2de08bc9a55f.png</v_cpy_logo></popu></popus></title_11101002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v2, "11102002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "0610"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2a
    const-string/jumbo v2, "0610"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2b
    const-string/jumbo v2, "0620"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string/jumbo v2, "0630"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "13004001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2c
    const-string/jumbo v0, "<titles><title_03006001><popus><popu><v_code_title_color>#F49372</v_code_title_color><v_code_time_color>#f9acac</v_code_time_color><v_code_num_color>#F49372</v_code_num_color><v_hd_bg>#FFFFFF</v_hd_bg><v_cpy_logo>2_47f526a692a25ee9c32a2277d232b65a.png</v_cpy_logo><v_hd_sp_bg>#CF4059</v_hd_sp_bg><v_by_bg>#F8E3E5</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_bt_by_sp_bg>#CF4059</v_bt_by_sp_bg></popu></popus></title_03006001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v2, "01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v0, "<titles><title_06101002><popus><popu><layoutName>duoqu_popup</layoutName><v_by_card_bg>#f0f0f0</v_by_card_bg><v_hd_del>delete.png</v_hd_del><v_bt_by_sp_bg>#e0e0e0</v_bt_by_sp_bg><v_hd_close>close.png</v_hd_close><v_lt_stk>#9fb5ca</v_lt_stk><head_num_text_color>#383838</head_num_text_color><v_by_bg>#fafafa</v_by_bg><v_hd_bg>TL3;TR3;S#f0f0f0</v_hd_bg><v_bt_bg>#F0F0F0</v_bt_bg><v_cpy_logo>nanfangdianwang.png</v_cpy_logo></popu></popus></title_06101002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v0, "<titles><title_06101002><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>duoqu_delete.png</v_hd_del><v_by_card_bg>#f0f0f0</v_by_card_bg><v_hd_close>duoqu_close.png</v_hd_close><v_lt_stk>#c1e2b3</v_lt_stk><head_num_text_color>#383838</head_num_text_color><v_hd_sp_bg>#006e68</v_hd_sp_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_bg>#FFFFFF</v_hd_bg><v_bt_bg>#fafafa</v_bt_bg><v_bt_by_sp_bg>#e0e0e0</v_bt_by_sp_bg><v_cpy_logo>gjdw_logo.png</v_cpy_logo></popu></popus></title_06101002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v0, "<titles><title_06101002><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_lt_stk>#9fb5ca</v_lt_stk><head_num_text_color>#383838</head_num_text_color><v_hd_sp_bg>#3774bf</v_hd_sp_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_bg>#FFFFFF</v_hd_bg><v_bt_bg>#fafafa</v_bt_bg><v_bt_by_sp_bg>#1d95cc</v_bt_by_sp_bg><v_cpy_delogo>2_c9d249fbfce92385061789c4d0595f49.png</v_cpy_delogo></popu></popus></title_06101002></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_30
    const-string/jumbo v0, "<titles><title_06301023><popus><popu><layoutName>dianwangkapian</layoutName><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><head_num_text_color>#383838</head_num_text_color><v_hd_sp_bg>#3774bf</v_hd_sp_bg><v_by_bg>#FFFFFF</v_by_bg><v_hd_del>duoqu_delete.png</v_hd_del><v_hd_close>duoqu_close.png</v_hd_close><v_hd_bg>#FFFFFF</v_hd_bg><v_bt_bg>#FFFFFF</v_bt_bg><v_bt_by_sp_bg>#1d95cc</v_bt_by_sp_bg><v_lt_stk>#9fb5ca</v_lt_stk><v_cpy_delogo>2_47f526a692a25ee9c32a2277d232b65a.png</v_cpy_delogo></popu></popus></title_06301023></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_31
    const-string/jumbo v2, "13004004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "13004005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "08000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v0, "<titles><title_08000><popus><popu><view_hd_line>TL8;TR8;S#307dd5</view_hd_line><v_hd_bg>TL0;TR0;S#f0f0f0</v_hd_bg><v_code_num_color>#ee7a18</v_code_num_color><v_relative_bg_color>TL3;TR3;BL3;BR3;S#F8E3D2;</v_relative_bg_color><v_cpy_logo>1_b98cc828a05786501d8a5192a2a5730c.jpg</v_cpy_logo><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close></popu></popus></title_08000></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v2, "08101"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v2, "08102"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v2, "08103"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v2, "08104"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    const-string/jumbo v0, "<titles><title_08000><popus><popu><v_by_card_bg>#f5f5f5</v_by_card_bg><v_hd_bg>#f5f5f5</v_hd_bg><v_code_num_color>#fc7718</v_code_num_color><v_relative_bg_color>TL3;TR3;BL3;BR3;S#F5f5f5;</v_relative_bg_color><v_cpy_logo>1_b98cc828a05786501d8a5192a2a5730c.jpg</v_cpy_logo><v_hd_close>1_ec3910a4ef4a64e2f8c78c9a80eef68d.png</v_hd_close></popu></popus></title_08000></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    goto/16 :goto_1

    :cond_35
    const-string/jumbo v2, "13004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "04002018"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "<titles><title_03006001><popus><popu><v_hd_close></v_hd_close><v_hd_del></v_hd_del><v_hd_bg></v_hd_bg><v_cpy_logo></v_cpy_logo><v_hd_sp_bg></v_hd_sp_bg></popu></popus></title_03006001></titles>"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBubleSmsTitle : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is sceneRule null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/com/xy/sms/sdk/constant/Constant;->Test:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getBubleSmsTitle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is sceneRule not null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    invoke-static {p0, v2}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getBubleSmsTitle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is smsTitle  null\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBubleSmsTitle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<titles><title_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "><popus><popu><layoutName>duoqu_popup</layoutName><v_hd_del>liantong.png</v_hd_del><v_hd_close>xiangqing.png</v_hd_close><v_bt_cell_split_bg>shuiyin.png</v_bt_cell_split_bg><v_by_bt_bg>#ebebeb</v_by_bt_bg><v_by_bg>#ffffff</v_by_bg><v_hd_bg>#fd7f8d</v_hd_bg><v_bt_bg>#ffffff</v_bt_bg></popu></popus></title_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "></titles>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "05001001"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "<titles><title_05001001><popus><popu><layoutName>chailvkapian</layoutName><v_by_bt_bg>#0398B9</v_by_bt_bg><v_hd_bg>#1BC4D9</v_hd_bg><v_by_bg>#1BC5D9</v_by_bg><v_bt_cell_split_bg>shuiyin.png</v_bt_cell_split_bg><v_hd_del>xiecheng.png</v_hd_del><v_bt_bg>#ffffff</v_bt_bg><v_hd_close>xiangqing.png</v_hd_close></popu></popus></title_05001001></titles>"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
