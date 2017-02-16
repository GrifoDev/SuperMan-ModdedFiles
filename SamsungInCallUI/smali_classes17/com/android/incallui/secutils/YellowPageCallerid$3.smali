.class final Lcom/android/incallui/secutils/YellowPageCallerid$3;
.super Ljava/lang/Object;
.source "YellowPageCallerid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secutils/YellowPageCallerid;->initContactService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/incallui/secutils/YellowPageCallerid$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/incallui/secutils/YellowPageCallerid$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/secutils/YellowPageCallerid;->Initialize_3rdlib(Landroid/content/Context;)V

    .line 99
    return-void
.end method
