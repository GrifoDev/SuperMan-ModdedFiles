.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    }
.end annotation


# static fields
.field private static sCoverBaseClass:Ljava/lang/Class;

.field private static sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

.field private static sGetSViewCoverHeightMethod:Ljava/lang/reflect/Method;

.field private static sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

.field private static sGetSViewCoverShortcutContainerHeightMethod:Ljava/lang/reflect/Method;

.field private static sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

.field private static sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

.field private static sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

.field private static sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

.field private static sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

.field private static sUserActivityMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mSViewCoverBase:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverHeightMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverShortcutContainerHeightMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/cover/SViewCoverLauncher;->setPreviewContainerSize(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher Unable to instantiate constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher InvocationTargetException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher IllegalAccessException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSViewCoverMargin(Landroid/content/Context;)F
    .locals 8

    const/high16 v4, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    const-string/jumbo v5, "SViewCoverLauncher"

    const-string/jumbo v6, "getSViewCoverMargin, context null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    :cond_1
    sget-object v5, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    sget-object v5, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_0
    return v4

    :cond_3
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SViewCoverLauncher InvocationTargetException encountered invoking getSViewCoverWidth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return v4

    :catch_1
    move-exception v0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SViewCoverLauncher IllegalAccessException encountered invoking getSViewCoverWidth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSViewCoverWidth(Landroid/content/Context;)F
    .locals 8

    const/high16 v4, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    const-string/jumbo v5, "SViewCoverLauncher"

    const-string/jumbo v6, "getSViewCoverWidth, context null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    :cond_1
    sget-object v5, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    sget-object v5, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_0
    return v4

    :cond_3
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SViewCoverLauncher InvocationTargetException encountered invoking getSViewCoverWidth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return v4

    :catch_1
    move-exception v0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SViewCoverLauncher IllegalAccessException encountered invoking getSViewCoverWidth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isAnyEmptyReflection()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverShortcutContainerHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private static loadReflections()V
    .locals 6

    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Load reflections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "com.sec.android.cover.CoverViewMediator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "There\'s no cover base class"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/cover/CoverState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "updateCoverState"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "onCoverAppCovered"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "onStatusBarStateChanged"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "showCoverOpenPopup"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "setCoverUiAlpha"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v5, "userActivity"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v5, "showCoverOpenPopup"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "getSViewCoverWidth"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverWidthMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "getSViewCoverHeight"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverHeightMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "getSViewCoverMargin"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverMarginMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "getSViewCoverShortcutContainerHeight"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sGetSViewCoverShortcutContainerHeightMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewContainerSize(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4

    if-nez p2, :cond_0

    const-string/jumbo v2, "SViewCoverLauncher"

    const-string/jumbo v3, "previewRootView null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/android/systemui/cover/SViewCoverLauncher;->getSViewCoverMargin(Landroid/content/Context;)F

    move-result v2

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {p1}, Lcom/android/systemui/cover/SViewCoverLauncher;->getSViewCoverWidth(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke onCoverAppCovered."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking onCoverAppCovered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking onCoverAppCovered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShortcutAppOpenCallback(Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;)V
    .locals 0

    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke updateCoverState."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
