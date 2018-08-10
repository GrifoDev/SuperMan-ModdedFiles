.class final Landroid/app/ActivityManager$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserver"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iput-object p2, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object v1, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method
