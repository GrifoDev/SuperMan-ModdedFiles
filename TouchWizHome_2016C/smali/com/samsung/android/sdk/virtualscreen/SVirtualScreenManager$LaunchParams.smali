.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
.super Ljava/lang/Object;
.source "SVirtualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchParams"
.end annotation


# static fields
.field public static FLAG_BASE_ACTIVITY:I

.field public static FLAG_CLEAR_TASKS:I

.field public static FLAG_FOCUS_POLICY:I

.field public static FLAG_LAYOUT_POLICY:I

.field public static FLAG_NO_ANIMATION:I

.field public static FLAG_RECREATE_VIRTUALSCREEN:I

.field public static FLAG_ZEROPAGE_POLICY:I


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_BASE_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_CLEAR_TASKS:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_NO_ANIMATION:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_NO_ANIMATION:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_LAYOUT_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_LAYOUT_POLICY:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_FOCUS_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_FOCUS_POLICY:I

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    return-void
.end method
