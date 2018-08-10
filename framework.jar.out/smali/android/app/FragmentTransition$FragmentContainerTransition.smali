.class public Landroid/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroid/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroid/app/BackStackRecord;

.field public lastIn:Landroid/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
