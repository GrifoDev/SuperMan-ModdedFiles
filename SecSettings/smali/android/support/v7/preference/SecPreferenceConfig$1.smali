.class Landroid/support/v7/preference/SecPreferenceConfig$1;
.super Ljava/lang/Object;
.source "SecPreferenceConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/SecPreferenceConfig;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SecPreferenceConfig;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SecPreferenceConfig;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/32 v6, 0x88b8

    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-static {v3}, Landroid/support/v7/preference/SecPreferenceConfig;->-wrap0(Landroid/support/v7/preference/SecPreferenceConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-static {v3}, Landroid/support/v7/preference/SecPreferenceConfig;->-wrap2(Landroid/support/v7/preference/SecPreferenceConfig;)V

    const v1, 0x88b8

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/support/v7/preference/SecPreferenceConfig$1$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/SecPreferenceConfig$1$1;-><init>(Landroid/support/v7/preference/SecPreferenceConfig$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig$1;->this$0:Landroid/support/v7/preference/SecPreferenceConfig;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    goto :goto_0
.end method
