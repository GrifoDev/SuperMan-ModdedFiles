.class Landroid/ktuca/KtUcaService$1;
.super Ljava/lang/Object;
.source "KtUcaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/ktuca/KtUcaService;


# direct methods
.method constructor <init>(Landroid/ktuca/KtUcaService;)V
    .locals 0

    iput-object p1, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    new-instance v1, Landroid/ktuca/KtUcaServiceJni;

    invoke-direct {v1}, Landroid/ktuca/KtUcaServiceJni;-><init>()V

    invoke-static {v0, v1}, Landroid/ktuca/KtUcaService;->-set0(Landroid/ktuca/KtUcaService;Landroid/ktuca/KtUcaServiceJni;)Landroid/ktuca/KtUcaServiceJni;

    iget-object v0, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    invoke-static {v0}, Landroid/ktuca/KtUcaService;->-get0(Landroid/ktuca/KtUcaService;)Landroid/ktuca/KtUcaServiceJni;

    iget-object v0, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    invoke-static {v0}, Landroid/ktuca/KtUcaService;->-get1(Landroid/ktuca/KtUcaService;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    invoke-static {v1}, Landroid/ktuca/KtUcaService;->-get2(Landroid/ktuca/KtUcaService;)[I

    move-result-object v1

    const/16 v2, -0x35

    invoke-static {v2, v0, v1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    return-void
.end method
