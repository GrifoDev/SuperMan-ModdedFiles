.class Landroid/support/v4/provider/FontsContractCompat$5$7;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/provider/FontsContractCompat$5;

.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$5$7;->this$1:Landroid/support/v4/provider/FontsContractCompat$5;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$5$7;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$5$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$5$7;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iget v1, p0, Landroid/support/v4/provider/FontsContractCompat$5$7;->val$resultCode:I

    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
