%% -------------------------------------------------------------------
%%
%% Copyright (c) 2019 Carlos Gonzalez Florido.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% ===================================================================
%% Defines
%% ===================================================================
-include_lib("kernel/include/logger.hrl").

-define(D(T), ?D(T, [])).
-define(D(T,P), ?LOG_DEBUG(T,P)).
-define(I(T), ?I(T, [])).
-define(I(T,P), ?LOG_INFO(T,P)).
-define(N(T), ?N(T, [])).
-define(N(T,P), ?LOG_NOTICE(T,P)).
-define(W(T), ?W(T, [])).
-define(W(T,P), ?LOG_WARNING(T,P)).
-define(E(T), ?E(T, [])).
-define(E(T,P), ?LOG_ERROR(T,P)).



%% ===================================================================
%% Records
%% ===================================================================



-record(uri, {
    scheme :: nklib:scheme(),
    user = <<>> :: binary(), 
    pass = <<>> :: binary(), 
    domain = <<"invalid.invalid">> :: binary(), 
    port = 0 :: inet:port_number(),             % 0 means "no port in message"
    path = <<>> :: binary(),
    opts = [] :: list(),
    headers = [] :: list(),
    ext_opts = [] :: list(),
    ext_headers = [] :: list(),
    disp = <<>> :: binary()
}).

