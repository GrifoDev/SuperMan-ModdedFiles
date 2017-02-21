.class public Landroid/ktuca/KtUcaServiceJni;
.super Ljava/lang/Object;
.source "KtUcaServiceJni.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "KtUcaServiceJni"

.field private static m_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Landroid/ktuca/KtUcaServiceJni;->m_Handler:Landroid/os/Handler;

    const-string/jumbo v0, "KtUcaServiceJni"

    const-string/jumbo v1, "System.loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ktuca2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KtUcaServiceJni"

    const-string/jumbo v1, "[STAT] KtUcaServiceJni Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native KUCA_CHInit(B[B[I)J
.end method

.method public static native KUCA_Close([BB)J
.end method

.method public static native KUCA_CloseT([BB)J
.end method

.method public static native KUCA_KUH_Establish(B)J
.end method

.method public static native KUCA_KUH_Release(B)J
.end method

.method public static native KUCA_KUH_Transmit(B[BI[B[I)J
.end method

.method public static native KUCA_Open([B[B[I)J
.end method

.method public static native KUCA_OpenT([B[B[I)J
.end method

.method public static native KUCA_Transmit([B[BI[B[I)J
.end method

.method public static native KUCA_UCAVersion([B[B[I)J
.end method

.method public static native KUCA_getHandle([B[B[B[B[I)J
.end method

.method public static native KUCA_getICCID([B[B[II[B)J
.end method

.method public static native KUCA_getIMSI([B[B[II[B)J
.end method

.method public static native KUCA_getMDN([B[B[II[B)J
.end method

.method public static native KUCA_getMODEL([B[B[II[B)J
.end method

.method public static native KUCA_getMSISDN([B[B[II[B)J
.end method

.method public static native KUCA_getPUID([B[B[II[B)J
.end method

.method public static native KUCA_getPinStatus([BI[B[I)J
.end method

.method public static native KUCA_getSIMInfo([B[B[I)J
.end method

.method public static native KUCA_getSimStatus([B[B)J
.end method

.method public static native KUCA_printCHInfo(B)J
.end method

.method public static native KUCA_usimAUTH([B[B[B[B[I)J
.end method

.method public static native KUCA_verifyPin([BILjava/lang/String;[B[I)J
.end method


# virtual methods
.method public uca_CHInit(B[B[I)J
    .locals 4

    const-string/jumbo v2, "KtUcaServiceJni"

    const-string/jumbo v3, "[STAT] uca_CHInit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_Close([BB)J
    .locals 2

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_CloseT([BB)J
    .locals 2

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_KUH_Establish(B)J
    .locals 2

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_KUH_Release(B)J
    .locals 2

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_KUH_Transmit(B[BI[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_Open([B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_OpenT([B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_Transmit([B[BI[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_UCAVersion([B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getHandle([B[B[B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getICCID([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getIMSI([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getMDN([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getMODEL([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getMSISDN([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getPUID([B[B[II[B)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getPinStatus([BI[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getSIMInfo([B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_getSimStatus([B[B)J
    .locals 2

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_printCHInfo(B)J
    .locals 2

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_usimAUTH([B[B[B[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uca_verifyPin([BILjava/lang/String;[B[I)J
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    return-wide v0
.end method
