--[[
    SCRIPT FEITO POR vianna#8189
    FAVOR DEIXAR OS CRÉDITOS PARA REPASSAR O SCRIPT
    AJUDE A COMUNIDADE
]]--

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRPclient = Tunnel.getInterface("vRP")
vianna = {}
Tunnel.bindInterface("vianna_wall",vianna)
Proxy.addInterface("vianna_wall",vianna)
vRP = Proxy.getInterface("vRP")

Config = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- GET USER ID AND STEAMHEX
-----------------------------------------------------------------------------------------------------------------------------------------	
function vianna.getId(sourceplayer)
    local sourceplayer = sourceplayer
	if sourceplayer ~= nil and sourceplayer ~= 0 then
		local user_id = vRP.getUserId(sourceplayer)
		if user_id then
			return user_id
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- USER PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------	

function vianna.getPermissao(toogle)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,Config.permissaoesp) then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
--Webhook (LINES)
-----------------------------------------------------------------------------------------------------------------------------------------
function vianna.reportlinesLog(toggle)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "" -- imagem da webhook
        PerformHttpRequest(Config.webhooklines, function(err, text, headers) end, 'POST', json.encode({username = ' Vianna WALL - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``ativou`` o /lines**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.firstname.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        }, 
                        {                        
							name = "``Sistema desenvolvido Por Vianna.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "Vianna Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "" -- icone da webhook
                    },
                    color = 3093194 
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

function vianna.reportunlinesLog(toggle)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "" -- imagem da webhook
        PerformHttpRequest(Config.webhooklines, function(err, text, headers) end, 'POST', json.encode({username = ' Vianna Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``desativou`` o /lines**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.firstname.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        },
                        {                        
							name = "``Sistema desenvolvido Por Vianna.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "Vianna Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "" -- icone da webhook
                    },
                    color = 3093194 
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
--Webhook (WALL)
-----------------------------------------------------------------------------------------------------------------------------------------
function vianna.reportwallLog(toggle)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "" -- imagem da webhook
        PerformHttpRequest(Config.webhookwall, function(err, text, headers) end, 'POST', json.encode({username = ' Vianna Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``ativou`` o /Wall**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.firstname.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        },
                        {                        
							name = "``Sistema desenvolvido Por Vianna.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "Vianna Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "" -- icone da webhook
                    },
                    color = 1286027
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

function vianna.reportunwallLog(toggle)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "" -- imagem da webhook
        PerformHttpRequest(Config.webhookwall, function(err, text, headers) end, 'POST', json.encode({username = ' Vianna Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``desativou`` o /Wall**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.firstname.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        },
                        {                        
							name = "``Sistema desenvolvido Por Vianna.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "Vianna Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "" -- icone da webhook
                    },
                    color = 1286027
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end


print("^2 WALL INICIADO COM SUCESSO")