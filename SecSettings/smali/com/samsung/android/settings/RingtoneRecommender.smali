.class public Lcom/samsung/android/settings/RingtoneRecommender;
.super Ljava/lang/Object;
.source "RingtoneRecommender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;
    }
.end annotation


# instance fields
.field public mIsOpen:Z

.field private mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mMode:I

.field private final mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/RingtoneRecommender;)Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    iput v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mMode:I

    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    return-void
.end method

.method private extract(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    new-instance v1, Lcom/samsung/android/settings/RingtoneRecommender$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/RingtoneRecommender$1;-><init>(Lcom/samsung/android/settings/RingtoneRecommender;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string/jumbo v0, "RingtoneRecommender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "close() is opened ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    :cond_0
    return-void
.end method

.method public doExtract(Ljava/lang/String;Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    iput-object p2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/RingtoneRecommender;->extract(Ljava/lang/String;)V

    return-void
.end method

.method public isOpen()Z
    .locals 3

    const-string/jumbo v0, "RingtoneRecommender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOpen() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    return v0
.end method
