.class Lcom/android/server/notification/ManagedServices$1$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/ManagedServices$1;

.field final synthetic val$name:Landroid/content/ComponentName;

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$userid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->-wrap4(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V

    return-void
.end method
