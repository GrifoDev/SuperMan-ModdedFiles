.class public Lcom/whitepages/nameid/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whitepages/nameid/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private c:Lcom/android/incallui/CallerInfo;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Initialized : NameIDFindInfoCallback"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/whitepages/nameid/e$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/whitepages/nameid/e$a;->b:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-boolean p2, p0, Lcom/whitepages/nameid/e$a;->e:Z

    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method static synthetic a(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfo;
    .locals 1

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->c:Lcom/android/incallui/CallerInfo;

    return-object v0
.end method

.method private a(Lcom/android/incallui/CallerInfo;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    return-void
.end method

.method static synthetic a(Lcom/whitepages/nameid/e$a;Lcom/android/incallui/CallerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/whitepages/nameid/e$a;->a(Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/whitepages/nameid/e$a;Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/whitepages/nameid/e$a;->a(Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 2

    const-string v0, "handleQueryComplete called"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->b:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/whitepages/nameid/e$a;->d:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/whitepages/nameid/e$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/whitepages/nameid/e$a;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->b:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-object v0
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerInfo.cnapName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/whitepages/nameid/e$a;->d:I

    iput-object p3, p0, Lcom/whitepages/nameid/e$a;->c:Lcom/android/incallui/CallerInfo;

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/whitepages/nameid/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->c:Lcom/android/incallui/CallerInfo;

    invoke-direct {p0, p2, v0}, Lcom/whitepages/nameid/e$a;->a(Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_2

    iget-wide v0, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->c:Lcom/android/incallui/CallerInfo;

    invoke-direct {p0, p2, v0}, Lcom/whitepages/nameid/e$a;->a(Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/android/incallui/Call;

    new-instance v8, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v1, v0, p2}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;-><init>(Lcom/whitepages/nameid/e$a;Landroid/os/Handler;Lcom/android/incallui/Call;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/whitepages/nameid/e$a;->a:Landroid/content/Context;

    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-boolean v6, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    iget-boolean v7, p0, Lcom/whitepages/nameid/e$a;->e:Z

    invoke-static {v8}, Lcom/whitepages/nameid/e$a;->a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/whitepages/nameid/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZLandroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/whitepages/nameid/e$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not launch lookup service"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/whitepages/nameid/e$a;->c:Lcom/android/incallui/CallerInfo;

    invoke-direct {p0, p2, v0}, Lcom/whitepages/nameid/e$a;->a(Ljava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0
.end method
