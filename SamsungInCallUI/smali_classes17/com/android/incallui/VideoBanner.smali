.class public Lcom/android/incallui/VideoBanner;
.super Ljava/lang/Object;
.source "VideoBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoBanner$MessageType;
    }
.end annotation


# static fields
.field public static final EVENT_MODIFY_RECEIVED:I = 0x65

.field public static final EVENT_VIDEO_BANNER_HIDE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "VideoBanner"

.field public static final TIMER_12_SEC:I = 0x2ee0

.field public static final TIMER_20_SEC:I = 0x4e20

.field public static final TIMER_30_SEC:I = 0x7530

.field public static final TIMER_55_SEC:I = 0xd6d8

.field public static final TIMER_5_SEC:I = 0x1388

.field private static sInstance:Lcom/android/incallui/VideoBanner;


# instance fields
.field private mBannerType:I

.field protected mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/android/incallui/VideoBanner$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoBanner$1;-><init>(Lcom/android/incallui/VideoBanner;)V

    iput-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    .line 340
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/VideoBanner;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/android/incallui/VideoBanner;->setUp()Lcom/android/incallui/VideoBanner;

    .line 309
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    return-object v0
.end method

.method public static getMessageForVideoState(I)Ljava/lang/String;
    .locals 8
    .param p0, "nType"    # I

    .prologue
    const v7, 0x7f0902f4

    const v6, 0x7f0902e8

    const v5, 0x7f0902e7

    const v4, 0x7f0902e6

    .line 125
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "primaryName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "Unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    const-string v2, "Other party"

    .line 131
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 244
    :goto_0
    return-object v1

    .line 133
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    const v3, 0x7f0902e3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 140
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_KTT()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    const v3, 0x7f0901be

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    const v3, 0x7f0902f5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_7
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 159
    goto/16 :goto_0

    .line 162
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    const v3, 0x7f0902f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 164
    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_KTT()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 165
    const v3, 0x7f0901bf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 167
    :cond_9
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    goto/16 :goto_0

    .line 172
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 173
    const v3, 0x7f0902f6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    :cond_a
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    goto/16 :goto_0

    .line 180
    :pswitch_5
    const v3, 0x7f0902e9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    goto/16 :goto_0

    .line 184
    :pswitch_6
    const v3, 0x7f090117

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 185
    goto/16 :goto_0

    .line 188
    :pswitch_7
    const v3, 0x7f0902ef

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 189
    goto/16 :goto_0

    .line 192
    :pswitch_8
    const v3, 0x7f0902e5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    goto/16 :goto_0

    .line 196
    :pswitch_9
    const v3, 0x7f0902f1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 197
    goto/16 :goto_0

    .line 200
    :pswitch_a
    const v3, 0x7f0902f2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 201
    goto/16 :goto_0

    .line 204
    :pswitch_b
    const v3, 0x7f0902f3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 205
    goto/16 :goto_0

    .line 208
    :pswitch_c
    const v3, 0x7f0902f8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    goto/16 :goto_0

    .line 212
    :pswitch_d
    const v3, 0x7f090304

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 213
    goto/16 :goto_0

    .line 216
    :pswitch_e
    const v3, 0x7f090301

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 217
    goto/16 :goto_0

    .line 220
    :pswitch_f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 221
    const v3, 0x7f090303

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 223
    :cond_b
    const v3, 0x7f0902ea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    goto/16 :goto_0

    .line 228
    :pswitch_10
    const v3, 0x7f090306

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 229
    goto/16 :goto_0

    .line 232
    :pswitch_11
    const v3, 0x7f0902f0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 233
    goto/16 :goto_0

    .line 236
    :pswitch_12
    const v3, 0x7f090305

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    goto/16 :goto_0

    .line 240
    :pswitch_13
    const v3, 0x7f090302

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_8
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private needToStart5secTimerInstantly()Z
    .locals 3

    .prologue
    .line 383
    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 390
    .local v0, "needToStartHideTimer":Z
    :goto_0
    return v0

    .line 383
    .end local v0    # "needToStartHideTimer":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUp()Lcom/android/incallui/VideoBanner;
    .locals 2

    .prologue
    .line 318
    const-class v1, Lcom/android/incallui/VideoBanner;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/android/incallui/VideoBanner;

    invoke-direct {v0}, Lcom/android/incallui/VideoBanner;-><init>()V

    sput-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    .line 322
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    monitor-exit v1

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showVideoBanner(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isIsSwapProgressing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    if-eqz p1, :cond_0

    .line 396
    const-string v0, "showVideoBanner"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    .line 398
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->showVideoBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tearDown()V
    .locals 2

    .prologue
    .line 327
    const-class v1, Lcom/android/incallui/VideoBanner;

    monitor-enter v1

    .line 328
    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->cancelAllTimer()V

    .line 330
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/VideoBanner;->sInstance:Lcom/android/incallui/VideoBanner;

    .line 332
    :cond_0
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected cancelAllTimer()V
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoBanner;->cancelTimer(I)V

    .line 314
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoBanner;->cancelTimer(I)V

    .line 315
    return-void
.end method

.method protected cancelModifyReceiveTimer()V
    .locals 1

    .prologue
    .line 464
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoBanner;->cancelTimer(I)V

    .line 465
    return-void
.end method

.method public cancelTimer(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    :cond_0
    return-void
.end method

.method protected cancelTimerToHideVideoStateMessage()V
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoBanner;->cancelTimer(I)V

    .line 441
    return-void
.end method

.method public controlModifyReceiveTimer(I)V
    .locals 1
    .param p1, "videoState"    # I

    .prologue
    .line 444
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->startModifyReceiveTimer()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->cancelModifyReceiveTimer()V

    goto :goto_0
.end method

.method protected expiredModifyReceiveTimer()V
    .locals 2

    .prologue
    .line 468
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 469
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 472
    :cond_0
    return-void
.end method

.method public getVideoBannerType()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    return v0
.end method

.method public hideVideoBanner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "hideVideoBanner"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    .line 405
    iput-object v1, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showVideoBanner(Ljava/lang/String;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->cancelTimerToHideVideoStateMessage()V

    .line 409
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 410
    return-void
.end method

.method public isModifyVideoBannerType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 256
    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingVideoBanner()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remindVideoBanner()V
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remindVideoBanner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    invoke-static {v1}, Lcom/android/incallui/VideoBanner$MessageType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoBanner;->showVideoBanner(Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method public restartTimer(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "delay"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoBanner;->cancelTimer(I)V

    .line 292
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    :cond_0
    return-void
.end method

.method protected restartTimerToHideVideoStateMessage()V
    .locals 2

    .prologue
    .line 436
    const/16 v0, 0x64

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoBanner;->restartTimer(II)V

    .line 437
    return-void
.end method

.method public restartVideoBanner()V
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartVideoBanner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    invoke-static {v1}, Lcom/android/incallui/VideoBanner$MessageType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoBanner;->showVideoBanner(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->restartTimerToHideVideoStateMessage()V

    .line 429
    :cond_0
    return-void
.end method

.method public setVideoCallBanner(I)V
    .locals 6
    .param p1, "messageType"    # I

    .prologue
    const/4 v3, 0x0

    .line 344
    if-nez p1, :cond_1

    .line 345
    iget v3, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoCallBanner : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/incallui/VideoBanner$MessageType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->banner(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "bannerChanged":Z
    iget v4, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eq v4, p1, :cond_2

    .line 352
    const/4 v0, 0x1

    .line 354
    :cond_2
    iput p1, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    .line 355
    iget v4, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    invoke-static {v4}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 358
    iget v4, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 361
    .local v2, "showToast":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 362
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    .line 363
    iput v3, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    .line 374
    :goto_2
    iget v3, p0, Lcom/android/incallui/VideoBanner;->mBannerType:I

    if-eqz v3, :cond_8

    .line 375
    iput-object v1, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    goto :goto_0

    .end local v2    # "showToast":Z
    :cond_4
    move v2, v3

    .line 358
    goto :goto_1

    .line 365
    .restart local v2    # "showToast":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/VideoBanner;->needToStart5secTimerInstantly()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 366
    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->restartTimerToHideVideoStateMessage()V

    .line 372
    :cond_6
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoBanner;->showVideoBanner(Ljava/lang/String;)V

    goto :goto_2

    .line 369
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/VideoBanner;->startTimerToHideVideoStateMessage()V

    goto :goto_3

    .line 377
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/VideoBanner;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method protected startModifyReceiveTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 452
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const v0, 0xd6d8

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/VideoBanner;->startTimer(II)V

    .line 461
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const/16 v0, 0x2ee0

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/VideoBanner;->startTimer(II)V

    goto :goto_0

    .line 456
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const/16 v0, 0x7530

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/VideoBanner;->startTimer(II)V

    goto :goto_0

    .line 459
    :cond_2
    const/16 v0, 0x4e20

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/VideoBanner;->startTimer(II)V

    goto :goto_0
.end method

.method public startTimer(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "delay"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/incallui/VideoBanner;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    :cond_0
    return-void
.end method

.method protected startTimerToHideVideoStateMessage()V
    .locals 2

    .prologue
    .line 432
    const/16 v0, 0x64

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoBanner;->startTimer(II)V

    .line 433
    return-void
.end method
