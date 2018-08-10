.class public Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;
.super Landroid/app/Activity;
.source "SeslSupportActivity.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity$ExtraData;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;->mExtraDataMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    return-void
.end method
