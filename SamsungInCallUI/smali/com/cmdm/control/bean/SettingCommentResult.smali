.class public Lcom/cmdm/control/bean/SettingCommentResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SettingCommentResult"
.end annotation


# instance fields
.field public commentList:Lcom/cmdm/control/bean/CommentList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "commentList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/CommentList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CommentList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SettingCommentResult;->commentList:Lcom/cmdm/control/bean/CommentList;

    return-void
.end method
