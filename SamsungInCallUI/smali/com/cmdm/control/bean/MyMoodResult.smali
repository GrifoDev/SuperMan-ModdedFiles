.class public Lcom/cmdm/control/bean/MyMoodResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MyMoodResult"
.end annotation


# instance fields
.field public isSetMood:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isSetMood"
    .end annotation
.end field

.field public moodLableList:Lcom/cmdm/control/bean/MoodLableList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "moodLableList"
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultCode"
    .end annotation
.end field

.field public resultText:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultText"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/MoodLableList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/MoodLableList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/MyMoodResult;->moodLableList:Lcom/cmdm/control/bean/MoodLableList;

    return-void
.end method


# virtual methods
.method public getSetMood()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/MyMoodResult;->isSetMood:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/MyMoodResult;->isSetMood:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/MyMoodResult;->isSetMood:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
