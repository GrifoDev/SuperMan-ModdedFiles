.class final Lcom/whitepages/nameid/NameIDHelper$1;
.super Ljava/lang/Object;
.source "NameIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/whitepages/nameid/ILookupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/whitepages/nameid/ILookupService;

    move-result-object v0

    # setter for: Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;
    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->access$002(Lcom/whitepages/nameid/ILookupService;)Lcom/whitepages/nameid/ILookupService;

    const/4 v0, 0x1

    # setter for: Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z
    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->access$102(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    # setter for: Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z
    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->access$102(Z)Z

    # setter for: Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;
    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->access$002(Lcom/whitepages/nameid/ILookupService;)Lcom/whitepages/nameid/ILookupService;

    # setter for: Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->access$202(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    const-wide/32 v0, 0xea60

    # invokes: Lcom/whitepages/nameid/NameIDHelper;->tryReconnect(J)V
    invoke-static {v0, v1}, Lcom/whitepages/nameid/NameIDHelper;->access$300(J)V

    return-void
.end method
