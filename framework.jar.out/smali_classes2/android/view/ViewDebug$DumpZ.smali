.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2131
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2132
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2134
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2135
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    :goto_0
    return-void

    .line 2136
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2120
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2121
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2122
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2123
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2124
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2118
    :goto_0
    return-void

    .line 2125
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2105
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2106
    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2108
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2110
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    :goto_0
    return-void

    .line 2111
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2145
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2147
    if-eqz p1, :cond_0

    .line 2148
    const-string/jumbo v1, "4,true "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2143
    :goto_0
    return-void

    .line 2150
    :cond_0
    const-string/jumbo v1, "5,false "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2152
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1760
    const/4 v3, 0x0

    .line 1762
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1764
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 1765
    move-object v0, v5

    nop

    nop

    move-object v2, v0

    .line 1766
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1772
    .end local v2    # "group":Landroid/view/ViewGroup;
    :goto_0
    const-string/jumbo v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1777
    if-eqz v4, :cond_0

    .line 1778
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v3, v4

    .line 1759
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 1770
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1774
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 1775
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "View"

    const-string/jumbo v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1777
    if-eqz v3, :cond_1

    .line 1778
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1776
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1777
    :goto_3
    if-eqz v3, :cond_3

    .line 1778
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1776
    :cond_3
    throw v6

    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1774
    .local v3, "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2201
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2204
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2205
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    const/4 v2, 0x1

    return v2

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "View"

    const-string/jumbo v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const/4 v2, 0x0

    return v2
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2180
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2181
    return-void

    .line 2184
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2185
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2186
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2187
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 2188
    nop

    nop

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 2185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1

    .line 2179
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1788
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1789
    return-void

    .line 1792
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1794
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1795
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1796
    nop

    nop

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1793
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1798
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1

    .line 1787
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1845
    const-string/jumbo v12, ""

    .line 1847
    .local v12, "strValue":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/view/View;

    if-eqz v15, :cond_4

    move-object/from16 v13, p1

    .line 1848
    nop

    nop

    .line 1850
    .local v13, "tempView":Landroid/view/View;
    const/4 v15, 0x2

    new-array v7, v15, [I

    .line 1851
    .local v7, "location":[I
    invoke-virtual {v13, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1854
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "strValue":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1855
    .restart local v12    # "strValue":Ljava/lang/String;
    const-string/jumbo v15, "id"

    move-object/from16 v0, p2

    invoke-static {v15, v12, v0}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1858
    const-string/jumbo v15, "x"

    const/16 v16, 0x0

    aget v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1861
    const-string/jumbo v15, "y"

    const/16 v16, 0x1

    aget v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1864
    const-string/jumbo v15, "width"

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1867
    const-string/jumbo v15, "height"

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1870
    const-string/jumbo v15, "scrollx"

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1873
    const-string/jumbo v15, "scrolly"

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1876
    const-string/jumbo v15, "enable"

    invoke-virtual {v13}, Landroid/view/View;->isEnabled()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1878
    const-string/jumbo v15, "longclickable"

    invoke-virtual {v13}, Landroid/view/View;->isLongClickable()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1880
    const-string/jumbo v15, "clickable"

    invoke-virtual {v13}, Landroid/view/View;->isClickable()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1882
    invoke-virtual {v13}, Landroid/view/View;->isFocusable()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1883
    const-string/jumbo v15, "hasfocus"

    invoke-virtual {v13}, Landroid/view/View;->hasFocus()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1887
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1888
    .local v2, "TalkBack_value":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 1889
    const-string/jumbo v15, "talkback"

    invoke-virtual {v13}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1893
    :cond_1
    const-string/jumbo v15, "isselected"

    invoke-virtual {v13}, Landroid/view/View;->isSelected()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1896
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8

    .line 1897
    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "VISIBLE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1913
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 1915
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1916
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_BASE_APPLICATION"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1989
    .local v11, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string/jumbo v15, "bottommargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1990
    const-string/jumbo v15, "leftmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1991
    const-string/jumbo v15, "rightmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1992
    const-string/jumbo v15, "topmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1996
    .end local v11    # "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    const-string/jumbo v15, "willnotdraw"

    invoke-virtual {v13}, Landroid/view/View;->willNotDraw()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2001
    .end local v2    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v7    # "location":[I
    .end local v13    # "tempView":Landroid/view/View;
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2003
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 2005
    .local v10, "methods":[Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v16, v15

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a

    aget-object v9, v10, v16

    .line 2006
    .local v9, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v15, "isFillViewport"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2007
    const-string/jumbo v18, "fillviewport"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2010
    :cond_5
    const-string/jumbo v15, "getFirstVisiblePosition"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2011
    const-string/jumbo v18, "firstposition"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2014
    :cond_6
    const-string/jumbo v15, "getCount"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2015
    const-string/jumbo v18, "itemcount"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2005
    :cond_7
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_3

    .line 1898
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v2    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v7    # "location":[I
    .restart local v13    # "tempView":Landroid/view/View;
    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1899
    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "INVISIBLE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1900
    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1901
    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "GONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1917
    .restart local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    :try_start_3
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1918
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1982
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 1919
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 1920
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_STARTING"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1921
    :cond_c
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1922
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1923
    :cond_d
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3e9

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1924
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_MEDIA"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1925
    :cond_e
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3ea

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1926
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1927
    :cond_f
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3eb

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 1928
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_ATTACHED_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1929
    :cond_10
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 1930
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1931
    :cond_11
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 1932
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SEARCH_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1933
    :cond_12
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d2

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 1934
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1935
    :cond_13
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d3

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 1936
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_ALERT"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1937
    :cond_14
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d4

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 1938
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_KEYGUARD"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1939
    :cond_15
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d5

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 1940
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_TOAST"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1941
    :cond_16
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d6

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 1942
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1943
    :cond_17
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d7

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 1944
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_PRIORITY_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1945
    :cond_18
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7de

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 1946
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1947
    :cond_19
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x830

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    .line 1948
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL_USER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1949
    :cond_1a
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 1950
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1951
    :cond_1b
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 1952
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1953
    :cond_1c
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d9

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 1954
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1955
    :cond_1d
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7da

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    .line 1956
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_ERROR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1957
    :cond_1e
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7db

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 1958
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_INPUT_METHOD"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1959
    :cond_1f
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7dc

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    .line 1960
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_INPUT_METHOD_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1961
    :cond_20
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7dd

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    .line 1962
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_WALLPAPER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1963
    :cond_21
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7de

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    .line 1964
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1965
    :cond_22
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7df

    move/from16 v0, v16

    if-ne v15, v0, :cond_23

    .line 1966
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SECURE_SYSTEM_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1967
    :cond_23
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e0

    move/from16 v0, v16

    if-ne v15, v0, :cond_24

    .line 1968
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_DRAG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1969
    :cond_24
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e1

    move/from16 v0, v16

    if-ne v15, v0, :cond_25

    .line 1970
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1971
    :cond_25
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e2

    move/from16 v0, v16

    if-ne v15, v0, :cond_26

    .line 1972
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_POINTER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1973
    :cond_26
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e3

    move/from16 v0, v16

    if-ne v15, v0, :cond_27

    .line 1974
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_NAVIGATION_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1975
    :cond_27
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e4

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 1976
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1977
    :cond_28
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e5

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    .line 1978
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_BOOT_PROGRESS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1979
    :cond_29
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x831

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1980
    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2018
    .end local v2    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v7    # "location":[I
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "tempView":Landroid/view/View;
    :catch_1
    move-exception v5

    .line 2021
    :cond_2a
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/view/ViewGroup;

    if-eqz v15, :cond_2b

    move-object/from16 v6, p1

    .line 2022
    nop

    nop

    .line 2023
    .local v6, "group":Landroid/view/ViewGroup;
    const-string/jumbo v15, "childcount"

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2025
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x20000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e

    .line 2026
    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_BEFORE_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2034
    .end local v6    # "group":Landroid/view/ViewGroup;
    :cond_2b
    :goto_4
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/widget/TextView;

    if-eqz v15, :cond_2c

    move-object/from16 v14, p1

    .line 2035
    nop

    nop

    .line 2036
    .local v14, "tempView":Landroid/widget/TextView;
    const-string/jumbo v15, "text"

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2039
    :try_start_4
    const-string/jumbo v15, "stringname"

    invoke-virtual {v14}, Landroid/widget/TextView;->getStringName()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2044
    :goto_5
    :try_start_5
    const-string/jumbo v15, "hint"

    invoke-virtual {v14}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2048
    :goto_6
    const-string/jumbo v15, "selectionstart"

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2050
    const-string/jumbo v15, "selectionend"

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2053
    .end local v14    # "tempView":Landroid/widget/TextView;
    :cond_2c
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/widget/Checkable;

    if-eqz v15, :cond_2d

    move-object/from16 v4, p1

    .line 2054
    check-cast v4, Landroid/widget/Checkable;

    .line 2055
    .local v4, "checkable":Landroid/widget/Checkable;
    const-string/jumbo v15, "ischecked"

    invoke-interface {v4}, Landroid/widget/Checkable;->isChecked()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1843
    .end local v4    # "checkable":Landroid/widget/Checkable;
    :cond_2d
    return-void

    .line 2027
    .restart local v6    # "group":Landroid/view/ViewGroup;
    :cond_2e
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x40000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2f

    .line 2028
    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_AFTER_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 2029
    :cond_2f
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x60000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b

    .line 2030
    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_BLOCK_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 2045
    .end local v6    # "group":Landroid/view/ViewGroup;
    .restart local v14    # "tempView":Landroid/widget/TextView;
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 2040
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 1993
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v14    # "tempView":Landroid/widget/TextView;
    .restart local v2    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v7    # "location":[I
    .restart local v13    # "tempView":Landroid/view/View;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    const/4 v7, 0x0

    .line 1809
    :try_start_0
    instance-of v5, p1, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1810
    move-object v0, p1

    nop

    nop

    move-object v4, v0

    .line 1811
    .local v4, "tempView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1812
    return v7

    .line 1816
    .end local v4    # "tempView":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 1817
    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 1816
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1820
    :cond_1
    const-string/jumbo v5, ""

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1822
    .local v1, "arr_str":[Ljava/lang/String;
    const-string/jumbo v5, "class"

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1827
    .end local v1    # "arr_str":[Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1828
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1829
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1835
    const/4 v5, 0x1

    return v5

    .line 1824
    :cond_2
    const-string/jumbo v5, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1830
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1831
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "View"

    const-string/jumbo v6, "Error while dumping hierarchy tree"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return v7
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2162
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 2165
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2173
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2167
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0

    .line 2171
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0
.end method
