.class public Lcom/cmdm/control/bean/MoodLableList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MoodLableList"
.end annotation


# instance fields
.field public moodLableList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "picLable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/PicLable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
