.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$NullInputStream;,
        Ljava/lang/ProcessBuilder$NullOutputStream;,
        Ljava/lang/ProcessBuilder$Redirect;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z

.field private redirects:[Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    .line 113
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 133
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 152
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 153
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private redirects()[Ljava/lang/ProcessBuilder$Redirect;
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    .line 605
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect;

    .line 606
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 605
    iput-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    .line 608
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    return-object v0
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 173
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 189
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 190
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public command()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 345
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    .line 346
    return-object p0
.end method

.method environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 9
    .param p1, "envp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 289
    sget-boolean v4, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v4, v3

    goto :goto_0

    .line 290
    :cond_1
    if-eqz p1, :cond_6

    .line 291
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/ProcessEnvironment;->emptyEnvironment(I)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 292
    sget-boolean v4, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-eqz v4, :cond_2

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 294
    :cond_3
    array-length v4, p1

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v0, p1, v2

    .line 301
    .local v0, "envstring":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 302
    const-string/jumbo v5, "\u0000.*"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_4
    const/16 v5, 0x3d

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 307
    .local v1, "eqlsign":I
    if-eq v1, v8, :cond_5

    .line 308
    iget-object v5, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 309
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 312
    .end local v0    # "envstring":Ljava/lang/String;
    .end local v1    # "eqlsign":I
    :cond_6
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 276
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 279
    :cond_0
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 280
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environment()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 282
    :cond_1
    sget-boolean v1, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 284
    :cond_3
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    return-object v1
.end method

.method public inheritIO()Ljava/lang/ProcessBuilder;
    .locals 2

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    return-object p0
.end method

.method public redirectError()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 767
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 706
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 710
    return-object p0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "redirectErrorStream"    # Z

    .prologue
    .line 880
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 881
    return-object p0
.end method

.method public redirectErrorStream()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return v0
.end method

.method public redirectInput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectInput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 729
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "source"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 637
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_0

    .line 638
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_1

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for reading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_1
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 642
    return-object p0
.end method

.method public redirectOutput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 748
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 674
    return-object p0
.end method

.method public start()Ljava/lang/Process;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 947
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    iget-object v11, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 948
    .local v3, "cmdarray":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cmdarray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 950
    .restart local v3    # "cmdarray":[Ljava/lang/String;
    array-length v11, v3

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v1, v3, v9

    .line 951
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 952
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 950
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 954
    .end local v1    # "arg":Ljava/lang/String;
    :cond_1
    aget-object v7, v3, v10

    .line 956
    .local v7, "prog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    .line 957
    .local v8, "security":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_2

    .line 958
    invoke-virtual {v8, v7}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 961
    :cond_2
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    if-nez v9, :cond_3

    const/4 v4, 0x0

    .line 965
    :goto_1
    :try_start_0
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 967
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    .line 968
    iget-boolean v11, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 964
    invoke-static {v3, v9, v4, v10, v11}, Ljava/lang/ProcessImpl;->start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 961
    :cond_3
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "dir":Ljava/lang/String;
    goto :goto_1

    .line 969
    .end local v4    # "dir":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 970
    .local v5, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 971
    .local v6, "exceptionInfo":Ljava/lang/String;
    move-object v2, v5

    .line 972
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v9, v5, Ljava/io/IOException;

    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    .line 975
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_1

    .line 983
    :cond_4
    :goto_2
    new-instance v10, Ljava/io/IOException;

    .line 984
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cannot run program \""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 985
    if-nez v4, :cond_5

    const-string/jumbo v9, ""

    .line 984
    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 983
    invoke-direct {v10, v9, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 976
    :catch_1
    move-exception v0

    .line 977
    .local v0, "ace":Ljava/security/AccessControlException;
    const-string/jumbo v6, ""

    .line 978
    move-object v2, v0

    goto :goto_2

    .line 985
    .end local v0    # "ace":Ljava/security/AccessControlException;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " (in directory \""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "\")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3
.end method
