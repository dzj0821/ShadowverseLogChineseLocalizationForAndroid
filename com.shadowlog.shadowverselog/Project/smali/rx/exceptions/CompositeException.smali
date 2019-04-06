.class public final Lrx/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/CompositeException$1;,
        Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lrx/exceptions/CompositeException$WrappedPrintWriter;,
        Lrx/exceptions/CompositeException$WrappedPrintStream;,
        Lrx/exceptions/CompositeException$PrintStreamOrWriter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29ffcc6947b49592L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "messagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 50
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    .local v1, "deDupedExceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "_exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 53
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v4, v2, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_0

    .line 54
    check-cast v2, Lrx/exceptions/CompositeException;

    .end local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 56
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceptions occurred. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 67
    return-void
.end method

.method private appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .param p1, "bldr"    # Ljava/lang/StringBuilder;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 178
    .local v0, "stackElement":Ljava/lang/StackTraceElement;
    const-string v4, "\t\tat "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "\tCaused by: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 184
    :cond_1
    return-void
.end method

.method private final getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 246
    .local v1, "root":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 252
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 250
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V
    .locals 9
    .param p1, "s"    # Lrx/exceptions/CompositeException$PrintStreamOrWriter;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "bldr":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lrx/exceptions/CompositeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 162
    .local v3, "myStackElement":Ljava/lang/StackTraceElement;
    const-string v7, "\tat "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "myStackElement":Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v2, 0x1

    .line 165
    .local v2, "i":I
    iget-object v4, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 166
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v5, "  ComposedException "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v5, "\t"

    invoke-direct {p0, v0, v1, v5}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    goto :goto_1

    .line 170
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p1}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 171
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 172
    monitor-exit v5

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 9

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    .line 89
    new-instance v0, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;

    invoke-direct {v0}, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    .line 90
    .local v0, "_cause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v5, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object v1, v0

    .line 93
    .local v1, "chain":Ljava/lang/Throwable;
    iget-object v6, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 94
    .local v3, "e":Ljava/lang/Throwable;
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0, v3}, Lrx/exceptions/CompositeException;->getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 102
    .local v4, "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 103
    .local v2, "child":Ljava/lang/Throwable;
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    new-instance v3, Ljava/lang/RuntimeException;

    .end local v3    # "e":Ljava/lang/Throwable;
    const-string v8, "Duplicate found in causal chain so cropping to prevent loop ..."

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v3    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v0    # "_cause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .end local v1    # "chain":Ljava/lang/Throwable;
    .end local v2    # "child":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v5    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 113
    .restart local v0    # "_cause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .restart local v1    # "chain":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v5    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 120
    goto :goto_0

    .line 121
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    iput-object v0, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 123
    .end local v0    # "_cause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .end local v1    # "chain":Ljava/lang/Throwable;
    .end local v5    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_4
    iget-object v6, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v6

    .line 114
    .restart local v0    # "_cause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .restart local v1    # "chain":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v5    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 139
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 143
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintStream;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 144
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 148
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintWriter;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 149
    return-void
.end method
