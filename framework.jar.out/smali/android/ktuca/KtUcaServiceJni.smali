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

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Landroid/ktuca/KtUcaServiceJni;->m_Handler:Landroid/os/Handler;

    .line 194
    const-string/jumbo v0, "KtUcaServiceJni"

    const-string/jumbo v1, "System.loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string/jumbo v0, "ktuca2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "KtUcaServiceJni"

    const-string/jumbo v1, "[STAT] KtUcaServiceJni Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
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
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .prologue
    .line 148
    const-string/jumbo v2, "KtUcaServiceJni"

    const-string/jumbo v3, "[STAT] uca_CHInit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    .line 150
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_Close([BB)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # B

    .prologue
    .line 128
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    .line 130
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_CloseT([BB)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # B

    .prologue
    .line 188
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    .line 190
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_KUH_Establish(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .prologue
    .line 161
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    .line 162
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_KUH_Release(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .prologue
    .line 167
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    .line 169
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_KUH_Transmit(B[BI[B[I)J
    .locals 2
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I

    .prologue
    .line 174
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 176
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_Open([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .prologue
    .line 113
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    .line 115
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_OpenT([B[B[I)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .prologue
    .line 181
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    .line 183
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_Transmit([B[BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .prologue
    .line 121
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 123
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_UCAVersion([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I

    .prologue
    .line 143
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    .line 144
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getHandle([B[B[B[B[I)J
    .locals 2
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "authHandle"    # [B
    .param p5, "authHandleLen"    # [I

    .prologue
    .line 28
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    .line 30
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getICCID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 54
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getIMSI([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 44
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 46
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getMDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 69
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 71
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getMODEL([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 77
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 79
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getMSISDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 36
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    .line 38
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getPUID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .prologue
    .line 60
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 62
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getPinStatus([BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I

    .prologue
    .line 99
    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    .line 101
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getSIMInfo([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I

    .prologue
    .line 84
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    .line 86
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_getSimStatus([B[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B

    .prologue
    .line 136
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    .line 138
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_printCHInfo(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .prologue
    .line 155
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    .line 156
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_usimAUTH([B[B[B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .prologue
    .line 92
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 94
    .local v0, "retVal":J
    return-wide v0
.end method

.method public uca_verifyPin([BILjava/lang/String;[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .prologue
    .line 106
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 108
    .local v0, "retVal":J
    return-wide v0
.end method
