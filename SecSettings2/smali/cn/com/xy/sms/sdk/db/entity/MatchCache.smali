.class public Lcn/com/xy/sms/sdk/db/entity/MatchCache;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public bubble_result:Ljava/lang/String;

.field public card_result:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public id:J

.field public msg_id:Ljava/lang/String;

.field public msg_num_md5:Ljava/lang/String;

.field public phonenum:Ljava/lang/String;

.field public popup_window_result:Ljava/lang/String;

.field public save_time:J

.field public scene_id:Ljava/lang/String;

.field public session_reuslt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->msg_num_md5:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->phonenum:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->msg_id:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->scene_id:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->popup_window_result:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->bubble_result:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->session_reuslt:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->card_result:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/sdk/db/entity/MatchCache;->extend:Ljava/lang/String;

    return-void
.end method
