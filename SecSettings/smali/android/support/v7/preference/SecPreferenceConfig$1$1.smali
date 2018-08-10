.class Landroid/support/v7/preference/SecPreferenceConfig$1$1;
.super Ljava/lang/Object;
.source "SecPreferenceConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/SecPreferenceConfig$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/preference/SecPreferenceConfig$1;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SecPreferenceConfig$1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SecPreferenceConfig$1$1;->this$1:Landroid/support/v7/preference/SecPreferenceConfig$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig$1$1;->this$1:Landroid/support/v7/preference/SecPreferenceConfig$1;

    iget-object v0, v0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceConfig;->-wrap1(Landroid/support/v7/preference/SecPreferenceConfig;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig$1$1;->this$1:Landroid/support/v7/preference/SecPreferenceConfig$1;

    iget-object v0, v0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :cond_0
    return-void
.end method
