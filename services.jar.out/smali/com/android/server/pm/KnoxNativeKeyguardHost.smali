.class public Lcom/android/server/pm/KnoxNativeKeyguardHost;
.super Landroid/widget/LinearLayout;
.source "KnoxNativeKeyguardHost.java"


# instance fields
.field final mDelegate:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/KnoxNativeKeyguardHost;->mDelegate:Lcom/android/server/pm/KnoxKeyguardDelegate;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundColor(I)V

    return-void
.end method
