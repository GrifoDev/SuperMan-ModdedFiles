.class public Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
.super Ljava/lang/Object;
.source "GuidanceStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidanceStylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Guidance"
.end annotation


# instance fields
.field private final mBreadcrumb:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mBreadcrumb:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mDescription:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getBreadcrumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mBreadcrumb:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->mTitle:Ljava/lang/String;

    return-object v0
.end method
