.class public Landroid/content/pm/ResolveInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    .line 464
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 465
    iget-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 463
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, -0x2

    .line 470
    iget v2, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v2, v3, :cond_0

    .line 471
    const/4 v2, 0x1

    return v2

    .line 473
    :cond_0
    iget v2, p2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v2, v3, :cond_1

    .line 474
    const/4 v2, -0x1

    return v2

    .line 476
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 477
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 478
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 479
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 481
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 468
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
