# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

.class public LMultipleReturns;

.super Ljava/lang/Object;

.method public static caller()I
   .registers 1
   invoke-static {},  LMultipleReturns;->$opt$CalleeReturnVoid()V
   invoke-static {},  LMultipleReturns;->$opt$CalleeReturnInt()I
   move-result v0
   return v0
.end method

.method public static $opt$CalleeReturnVoid()V
   .registers 2
   const/4 v0, 0x0
   const/4 v1, 0x1
   if-eq v1, v0, :else
   return-void
   :else
   return-void
.end method

.method public static $opt$CalleeReturnInt()I
   .registers 2
   const/4 v0, 0x0
   const/4 v1, 0x1
   if-eq v1, v0, :else
   return v0
   :else
   return v1
.end method
