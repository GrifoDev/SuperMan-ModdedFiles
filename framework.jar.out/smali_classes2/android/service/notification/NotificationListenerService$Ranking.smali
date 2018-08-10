.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRank:I

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:I

.field private mVisibilityOverride:I

.field public semPinned:Z


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "NONE"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "MIN"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "LOW"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "HIGH"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
    .end sparse-switch
.end method

.method private populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 v0, 0x2

    if-ge p6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iput-boolean p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->semPinned:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowBadge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public getAdditionalPeople()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method
