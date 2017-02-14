.class public Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public category_id:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public menu_path:Ljava/lang/String;

.field public menu_type:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public targetCls:Ljava/lang/String;

.field public targetPkg:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    iput p6, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    iput-object p7, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    iput p12, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    iput-object p13, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->category_id:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->extras:Landroid/os/Bundle;

    return-void
.end method
