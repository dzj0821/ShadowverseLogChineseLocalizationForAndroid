.class final Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDebounceWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field emitting:Z

.field hasValue:Z

.field index:I

.field terminate:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(ILrx/Subscriber;Lrx/Subscriber;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p2, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p3, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    if-eq p1, v3, :cond_1

    .line 116
    :cond_0
    monitor-exit p0

    .line 144
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 119
    .local v2, "localValue":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 121
    .local v1, "localHasValue":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 122
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    if-eqz v1, :cond_2

    .line 128
    :try_start_1
    invoke-virtual {p2, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_2
    monitor-enter p0

    .line 137
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    if-nez v3, :cond_3

    .line 138
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 139
    monitor-exit p0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 124
    .end local v1    # "localHasValue":Z
    .end local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 129
    .restart local v1    # "localHasValue":Z
    .restart local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p2, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-eqz v3, :cond_0

    .line 151
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    .line 152
    monitor-exit p0

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 155
    .local v2, "localValue":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 157
    .local v1, "localHasValue":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 158
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 160
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v1, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 161
    .end local v1    # "localHasValue":Z
    .end local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 166
    .restart local v1    # "localHasValue":Z
    .restart local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized next(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 109
    iget v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
