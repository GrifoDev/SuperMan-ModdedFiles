.class Lcom/android/server/cover/CoverManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTestModeChanged(IZ)V
    .locals 7

    const/16 v2, 0xff

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get13(Lcom/android/server/cover/CoverManagerServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_1

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x1

    move v4, v3

    move v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1, p2, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap5(Lcom/android/server/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    const/4 v2, 0x0

    invoke-static {v1, p2, v3, v2}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap7(Lcom/android/server/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0
.end method
