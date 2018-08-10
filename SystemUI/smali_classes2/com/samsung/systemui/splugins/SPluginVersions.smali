.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "SPluginVersions.java"


# static fields
.field public static final MODULE_MULTIWINDOW:Ljava/lang/String; = "multiwindow"

.field public static final MODULE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final MODULE_PROFILE:Ljava/lang/String; = "profile"

.field public static final MODULE_QSCOLORING:Ljava/lang/String; = "coloring"

.field public static final MODULE_RECENTS:Ljava/lang/String; = "recents"

.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static final MODULE_TASKBAR:Ljava/lang/String; = "taskbar"

.field public static PLATFORM_VERSION_EMSYSTEMUIMANAGER:I = 0x0

.field public static PLATFORM_VERSION_LOCKSTAR:I = 0x0

.field public static PLATFORM_VERSION_MULTIWINDOW:I = 0x0

.field public static PLATFORM_VERSION_NOTICENTER:I = 0x0

.field public static PLATFORM_VERSION_NOTIFICATION:I = 0x0

.field public static PLATFORM_VERSION_PROFILE:I = 0x0

.field public static PLATFORM_VERSION_QSCOLORING:I = 0x0

.field public static PLATFORM_VERSION_RECENTS:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_SPLUGINMANAGER:I = 0x0

.field public static PLATFORM_VERSION_TASKBAR:I = 0x0

.field private static final VERSION_EMSYSTEMUIMANAGER:I = 0x1

.field private static final VERSION_LOCKSTAR:I = 0x3eb

.field private static final VERSION_MULTIWINDOW:I = 0x1

.field private static final VERSION_NOTICENTER:I = 0x1

.field private static final VERSION_NOTIFICATION:I = 0x1

.field private static final VERSION_PROFILE:I = 0x3e9

.field private static final VERSION_QSCOLORING:I = 0x3e8

.field private static final VERSION_RECENTS:I = 0x3e9

.field private static final VERSION_SLIMINDICATOR:I = 0x3eb

.field private static final VERSION_SPLUGINMANAGER:I = 0x3e9

.field private static final VERSION_TASKBAR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "SPlugin Platform Versions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  SPLUGINMANAGER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SPLUGINMANAGER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  EMSYSTEMUIMANAGER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_EMSYSTEMUIMANAGER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  RECENTS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_RECENTS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  NOTIFICATION : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTIFICATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  MULTIWINDOW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTIWINDOW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  TASKBAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_TASKBAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  LOCKSTAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_LOCKSTAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  PROFILE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PROFILE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  SLIMINDICATOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  QSCOLORING : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_QSCOLORING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  NOTICENTER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTICENTER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static initVersion()V
    .locals 3

    const/16 v2, 0x3eb

    const/16 v0, 0x3e9

    const/4 v1, 0x1

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SPLUGINMANAGER:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_EMSYSTEMUIMANAGER:I

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_RECENTS:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTIFICATION:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTIWINDOW:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_TASKBAR:I

    sput v2, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_LOCKSTAR:I

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PROFILE:I

    sput v2, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_QSCOLORING:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTICENTER:I

    return-void
.end method
