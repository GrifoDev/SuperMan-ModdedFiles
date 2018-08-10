.class public Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
.super Lcom/samsung/android/settings/notification/PriorityNotiAppList$Row;
.source "PriorityNotiAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public banned:Z

.field public first:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public priority:Z

.field public settingsIntent:Landroid/content/Intent;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$Row;-><init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList$Row;)V

    return-void
.end method
