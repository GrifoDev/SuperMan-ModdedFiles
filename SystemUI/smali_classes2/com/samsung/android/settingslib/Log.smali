.class public Lcom/samsung/android/settingslib/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/Log$TraceReflector;
    }
.end annotation


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final LINE_SEP_LEN:I

.field private static sLevel:I

.field private static sTimeBefore:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const-class v0, Lcom/samsung/android/settingslib/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP_LEN:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settingslib/Log;->sTimeBefore:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
