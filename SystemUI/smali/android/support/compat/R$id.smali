.class public final Landroid/support/compat/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static async:I

.field public static blocking:I

.field public static forever:I

.field public static italic:I

.field public static normal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/support/compat/R$id;->async:I

    sput v0, Landroid/support/compat/R$id;->blocking:I

    sput v0, Landroid/support/compat/R$id;->forever:I

    sput v0, Landroid/support/compat/R$id;->italic:I

    sput v0, Landroid/support/compat/R$id;->normal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
