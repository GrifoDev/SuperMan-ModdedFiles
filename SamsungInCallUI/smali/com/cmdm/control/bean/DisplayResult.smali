.class public Lcom/cmdm/control/bean/DisplayResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DisplayResult"
.end annotation


# instance fields
.field public settingList:Lcom/cmdm/control/bean/SettingList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingList()Lcom/cmdm/control/bean/SettingList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DisplayResult;->settingList:Lcom/cmdm/control/bean/SettingList;

    return-object v0
.end method

.method public setSettingList(Lcom/cmdm/control/bean/SettingList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DisplayResult;->settingList:Lcom/cmdm/control/bean/SettingList;

    return-void
.end method
